// SPDX-License-Identifier: Apache-2.0
// svm_sv_ram.v — Support vector ROM/RAM for 250 SVs × 256 features × 16-bit
//
// Total storage: 250 × 256 × 16-bit = 64,000 words = 128 KB
//
// Implementation: eight sky130_sram_16kbyte_1rw1r_32x4096_8 macros
//   Each macro: 4096 × 32-bit = 16KB → stores 8192 × 16-bit entries
//   8 macros × 8192 = 65,536 entries (covers our 64,000 + some spare)
//
// Address layout: sv_ram_addr[17:0] from svm_compute_core
//   sv_ram_addr[17:13] = macro select (0–7)
//   sv_ram_addr[12:1]  = word address within macro (11 bits → 2048 words)
//   sv_ram_addr[0]     = half-word select (0=lower 16b, 1=upper 16b)
//
// SV weights are loaded by management SoC via Wishbone before inference.
// Port 0 (RW): used by Wishbone loader
// Port 1 (RO): used by svm_compute_core read port

`default_nettype none

module svm_sv_ram (
    input  wire        clk,
    // svm_compute_core read port
    input  wire [17:0] rd_addr,
    input  wire        rd_en,
    output reg  [15:0] rd_data,
    // Wishbone write port (load SV weights)
    input  wire [17:0] wr_addr,
    input  wire [15:0] wr_data,
    input  wire        wr_en
);

    // -------------------------------------------------------------------------
    // Address decode
    // -------------------------------------------------------------------------
    wire [2:0]  rd_macro = rd_addr[14:12]; // which of 8 macros (3 bits)
    wire [11:0] rd_word  = rd_addr[12:1];  // 12-bit word addr within macro (4096 words)
    wire        rd_half  = rd_addr[0];

    wire [2:0]  wr_macro = wr_addr[14:12];
    wire [11:0] wr_word  = wr_addr[12:1];
    wire        wr_half  = wr_addr[0];

    // -------------------------------------------------------------------------
    // Per-macro chip selects
    // -------------------------------------------------------------------------
    wire [7:0] rd_csb, wr_csb;
    genvar i;
    generate
        for (i = 0; i < 8; i = i+1) begin : macro_cs
            assign rd_csb[i] = ~(rd_en && (rd_macro == i));
            assign wr_csb[i] = ~(wr_en && (wr_macro == i));
        end
    endgenerate

    wire [3:0]  wr_wmask = wr_half ? 4'b1100 : 4'b0011;
    wire [31:0] wr_data32 = wr_half ? {wr_data, 16'h0} : {16'h0, wr_data};

    // -------------------------------------------------------------------------
    // Macro outputs — mux read data
    // -------------------------------------------------------------------------
    wire [31:0] macro_dout [0:7];
    reg  [2:0]  rd_macro_r;
    reg         rd_half_r;
    always @(posedge clk) begin
        rd_macro_r <= rd_macro;
        rd_half_r  <= rd_half;
        rd_data    <= rd_half_r ? macro_dout[rd_macro_r][31:16]
                                : macro_dout[rd_macro_r][15:0];
    end

    // -------------------------------------------------------------------------
    // Eight sky130_sram_16kbyte_1rw1r_32x4096_8 macros
    // -------------------------------------------------------------------------
    generate
        for (i = 0; i < 8; i = i+1) begin : sv_macros
            sky130_sram_16kbyte_1rw1r_32x4096_8 macro (
                // Port 0: Wishbone write
                .clk0  (clk),
                .csb0  (wr_csb[i]),
                .web0  (~wr_en),
                .wmask0(wr_wmask),
                .addr0 (wr_word),
                .din0  (wr_data32),
                .dout0 (),
                // Port 1: svm_compute_core read
                .clk1  (clk),
                .csb1  (rd_csb[i]),
                .addr1 (rd_word),
                .dout1 (macro_dout[i])
            );
        end
    endgenerate

endmodule
`default_nettype wire
