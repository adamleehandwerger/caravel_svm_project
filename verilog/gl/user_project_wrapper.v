module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 output [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire alpha_wr_en_r;
 wire batch_active;
 wire \drain_cnt[0] ;
 wire \drain_cnt[1] ;
 wire \drain_cnt[2] ;
 wire \drain_cnt[3] ;
 wire \drain_cnt[4] ;
 wire \drain_cnt[5] ;
 wire ram_ren_w;
 wire \reg_alpha_wr[0] ;
 wire \reg_alpha_wr[10] ;
 wire \reg_alpha_wr[11] ;
 wire \reg_alpha_wr[12] ;
 wire \reg_alpha_wr[13] ;
 wire \reg_alpha_wr[14] ;
 wire \reg_alpha_wr[15] ;
 wire \reg_alpha_wr[16] ;
 wire \reg_alpha_wr[17] ;
 wire \reg_alpha_wr[18] ;
 wire \reg_alpha_wr[19] ;
 wire \reg_alpha_wr[1] ;
 wire \reg_alpha_wr[20] ;
 wire \reg_alpha_wr[21] ;
 wire \reg_alpha_wr[22] ;
 wire \reg_alpha_wr[23] ;
 wire \reg_alpha_wr[2] ;
 wire \reg_alpha_wr[3] ;
 wire \reg_alpha_wr[4] ;
 wire \reg_alpha_wr[5] ;
 wire \reg_alpha_wr[6] ;
 wire \reg_alpha_wr[7] ;
 wire \reg_alpha_wr[8] ;
 wire \reg_alpha_wr[9] ;
 wire \reg_control[0] ;
 wire \reg_control[10] ;
 wire \reg_control[11] ;
 wire \reg_control[12] ;
 wire \reg_control[13] ;
 wire \reg_control[14] ;
 wire \reg_control[15] ;
 wire \reg_control[16] ;
 wire \reg_control[17] ;
 wire \reg_control[18] ;
 wire \reg_control[19] ;
 wire \reg_control[1] ;
 wire \reg_control[20] ;
 wire \reg_control[21] ;
 wire \reg_control[22] ;
 wire \reg_control[23] ;
 wire \reg_control[24] ;
 wire \reg_control[25] ;
 wire \reg_control[26] ;
 wire \reg_control[27] ;
 wire \reg_control[28] ;
 wire \reg_control[29] ;
 wire \reg_control[2] ;
 wire \reg_control[30] ;
 wire \reg_control[31] ;
 wire \reg_control[3] ;
 wire \reg_control[4] ;
 wire \reg_control[5] ;
 wire \reg_control[6] ;
 wire \reg_control[7] ;
 wire \reg_control[8] ;
 wire \reg_control[9] ;
 wire \reg_num_samples[0] ;
 wire \reg_num_samples[1] ;
 wire \reg_num_samples[2] ;
 wire \reg_num_samples[3] ;
 wire \reg_num_samples[4] ;
 wire \reg_num_samples[5] ;
 wire \reg_num_samples[6] ;
 wire \reg_num_samples[7] ;
 wire \reg_num_samples[8] ;
 wire \reg_num_samples[9] ;
 wire \reg_num_sv[0][0] ;
 wire \reg_num_sv[0][1] ;
 wire \reg_num_sv[0][2] ;
 wire \reg_num_sv[0][3] ;
 wire \reg_num_sv[0][4] ;
 wire \reg_num_sv[0][5] ;
 wire \reg_num_sv[0][6] ;
 wire \reg_num_sv[0][7] ;
 wire \reg_num_sv[1][0] ;
 wire \reg_num_sv[1][1] ;
 wire \reg_num_sv[1][2] ;
 wire \reg_num_sv[1][3] ;
 wire \reg_num_sv[1][4] ;
 wire \reg_num_sv[1][5] ;
 wire \reg_num_sv[1][6] ;
 wire \reg_num_sv[1][7] ;
 wire \reg_num_sv[2][0] ;
 wire \reg_num_sv[2][1] ;
 wire \reg_num_sv[2][2] ;
 wire \reg_num_sv[2][3] ;
 wire \reg_num_sv[2][4] ;
 wire \reg_num_sv[2][5] ;
 wire \reg_num_sv[2][6] ;
 wire \reg_num_sv[2][7] ;
 wire \reg_num_sv[3][0] ;
 wire \reg_num_sv[3][1] ;
 wire \reg_num_sv[3][2] ;
 wire \reg_num_sv[3][3] ;
 wire \reg_num_sv[3][4] ;
 wire \reg_num_sv[3][5] ;
 wire \reg_num_sv[3][6] ;
 wire \reg_num_sv[3][7] ;
 wire \reg_num_sv[4][0] ;
 wire \reg_num_sv[4][1] ;
 wire \reg_num_sv[4][2] ;
 wire \reg_num_sv[4][3] ;
 wire \reg_num_sv[4][4] ;
 wire \reg_num_sv[4][5] ;
 wire \reg_num_sv[4][6] ;
 wire \reg_num_sv[4][7] ;
 wire \reg_param_wr[0] ;
 wire \reg_param_wr[10] ;
 wire \reg_param_wr[11] ;
 wire \reg_param_wr[12] ;
 wire \reg_param_wr[13] ;
 wire \reg_param_wr[14] ;
 wire \reg_param_wr[15] ;
 wire \reg_param_wr[16] ;
 wire \reg_param_wr[17] ;
 wire \reg_param_wr[18] ;
 wire \reg_param_wr[19] ;
 wire \reg_param_wr[1] ;
 wire \reg_param_wr[2] ;
 wire \reg_param_wr[3] ;
 wire \reg_param_wr[4] ;
 wire \reg_param_wr[5] ;
 wire \reg_param_wr[6] ;
 wire \reg_param_wr[7] ;
 wire \reg_param_wr[8] ;
 wire \reg_param_wr[9] ;
 wire rst_n;
 wire sample_rdy_w;
 wire svm_clk_en;
 wire svm_done;
 wire svm_error;
 wire svm_gclk;
 wire \svm_kernel_out[0] ;
 wire \svm_kernel_out[10] ;
 wire \svm_kernel_out[11] ;
 wire \svm_kernel_out[12] ;
 wire \svm_kernel_out[13] ;
 wire \svm_kernel_out[14] ;
 wire \svm_kernel_out[15] ;
 wire \svm_kernel_out[1] ;
 wire \svm_kernel_out[2] ;
 wire \svm_kernel_out[3] ;
 wire \svm_kernel_out[4] ;
 wire \svm_kernel_out[5] ;
 wire \svm_kernel_out[6] ;
 wire \svm_kernel_out[7] ;
 wire \svm_kernel_out[8] ;
 wire \svm_kernel_out[9] ;
 wire svm_kernel_valid;
 wire wb_valid;

 sky130_fd_sc_hd__inv_2 _0351_ (.A(wbs_dat_i[19]),
    .Y(_0263_));
 sky130_fd_sc_hd__inv_2 _0352_ (.A(\drain_cnt[2] ),
    .Y(_0264_));
 sky130_fd_sc_hd__inv_2 _0353_ (.A(wbs_we_i),
    .Y(_0265_));
 sky130_fd_sc_hd__inv_2 _0354_ (.A(svm_done),
    .Y(_0266_));
 sky130_fd_sc_hd__inv_2 _0355_ (.A(wb_rst_i),
    .Y(rst_n));
 sky130_fd_sc_hd__or4bb_2 _0356_ (.A(wbs_adr_i[31]),
    .B(wbs_adr_i[30]),
    .C_N(wbs_adr_i[29]),
    .D_N(wbs_adr_i[28]),
    .X(_0267_));
 sky130_fd_sc_hd__or4_2 _0357_ (.A(wbs_adr_i[25]),
    .B(wbs_adr_i[24]),
    .C(wbs_adr_i[27]),
    .D(wbs_adr_i[26]),
    .X(_0268_));
 sky130_fd_sc_hd__or4_2 _0358_ (.A(wbs_adr_i[21]),
    .B(wbs_adr_i[20]),
    .C(wbs_adr_i[23]),
    .D(wbs_adr_i[22]),
    .X(_0269_));
 sky130_fd_sc_hd__or3_2 _0359_ (.A(_0267_),
    .B(_0268_),
    .C(_0269_),
    .X(_0270_));
 sky130_fd_sc_hd__nand2_2 _0360_ (.A(wbs_stb_i),
    .B(wbs_cyc_i),
    .Y(_0271_));
 sky130_fd_sc_hd__or4_2 _0361_ (.A(wbs_adr_i[9]),
    .B(wbs_adr_i[8]),
    .C(wbs_adr_i[11]),
    .D(wbs_adr_i[10]),
    .X(_0272_));
 sky130_fd_sc_hd__or4_2 _0362_ (.A(wbs_adr_i[13]),
    .B(wbs_adr_i[12]),
    .C(wbs_adr_i[15]),
    .D(wbs_adr_i[14]),
    .X(_0273_));
 sky130_fd_sc_hd__or4_2 _0363_ (.A(wbs_adr_i[17]),
    .B(wbs_adr_i[16]),
    .C(wbs_adr_i[19]),
    .D(wbs_adr_i[18]),
    .X(_0274_));
 sky130_fd_sc_hd__or4_2 _0364_ (.A(_0271_),
    .B(_0272_),
    .C(_0273_),
    .D(_0274_),
    .X(_0275_));
 sky130_fd_sc_hd__nor2_2 _0365_ (.A(_0270_),
    .B(_0275_),
    .Y(wb_valid));
 sky130_fd_sc_hd__nand2_2 _0366_ (.A(wbs_we_i),
    .B(wb_valid),
    .Y(_0276_));
 sky130_fd_sc_hd__or2_2 _0367_ (.A(wbs_adr_i[2]),
    .B(wbs_adr_i[3]),
    .X(_0277_));
 sky130_fd_sc_hd__or4b_2 _0368_ (.A(wbs_adr_i[4]),
    .B(wbs_adr_i[7]),
    .C(wbs_adr_i[6]),
    .D_N(wbs_adr_i[5]),
    .X(_0278_));
 sky130_fd_sc_hd__nor2_2 _0369_ (.A(_0277_),
    .B(_0278_),
    .Y(_0279_));
 sky130_fd_sc_hd__or4_2 _0370_ (.A(_0271_),
    .B(_0272_),
    .C(_0273_),
    .D(_0274_),
    .X(_0280_));
 sky130_fd_sc_hd__or3_2 _0371_ (.A(_0265_),
    .B(_0270_),
    .C(_0280_),
    .X(_0281_));
 sky130_fd_sc_hd__nor3_2 _0372_ (.A(_0277_),
    .B(_0278_),
    .C(_0281_),
    .Y(_0282_));
 sky130_fd_sc_hd__mux2_1 _0373_ (.A0(\reg_num_sv[4][7] ),
    .A1(wbs_dat_i[7]),
    .S(_0282_),
    .X(_0262_));
 sky130_fd_sc_hd__mux2_1 _0374_ (.A0(\reg_num_sv[4][6] ),
    .A1(wbs_dat_i[6]),
    .S(_0282_),
    .X(_0261_));
 sky130_fd_sc_hd__mux2_1 _0375_ (.A0(\reg_num_sv[4][5] ),
    .A1(wbs_dat_i[5]),
    .S(_0282_),
    .X(_0260_));
 sky130_fd_sc_hd__mux2_1 _0376_ (.A0(\reg_num_sv[4][4] ),
    .A1(wbs_dat_i[4]),
    .S(_0282_),
    .X(_0259_));
 sky130_fd_sc_hd__mux2_1 _0377_ (.A0(\reg_num_sv[4][3] ),
    .A1(wbs_dat_i[3]),
    .S(_0282_),
    .X(_0258_));
 sky130_fd_sc_hd__mux2_1 _0378_ (.A0(\reg_num_sv[4][2] ),
    .A1(wbs_dat_i[2]),
    .S(_0282_),
    .X(_0257_));
 sky130_fd_sc_hd__mux2_1 _0379_ (.A0(\reg_num_sv[4][1] ),
    .A1(wbs_dat_i[1]),
    .S(_0282_),
    .X(_0256_));
 sky130_fd_sc_hd__mux2_1 _0380_ (.A0(\reg_num_sv[4][0] ),
    .A1(wbs_dat_i[0]),
    .S(_0282_),
    .X(_0255_));
 sky130_fd_sc_hd__or4b_2 _0381_ (.A(wbs_adr_i[5]),
    .B(wbs_adr_i[7]),
    .C(wbs_adr_i[6]),
    .D_N(wbs_adr_i[4]),
    .X(_0283_));
 sky130_fd_sc_hd__nand2_2 _0382_ (.A(wbs_adr_i[2]),
    .B(wbs_adr_i[3]),
    .Y(_0284_));
 sky130_fd_sc_hd__nor2_2 _0383_ (.A(_0283_),
    .B(_0284_),
    .Y(_0285_));
 sky130_fd_sc_hd__or3_2 _0384_ (.A(_0281_),
    .B(_0283_),
    .C(_0284_),
    .X(_0286_));
 sky130_fd_sc_hd__mux2_1 _0385_ (.A0(wbs_dat_i[7]),
    .A1(\reg_num_sv[3][7] ),
    .S(_0286_),
    .X(_0253_));
 sky130_fd_sc_hd__mux2_1 _0386_ (.A0(wbs_dat_i[6]),
    .A1(\reg_num_sv[3][6] ),
    .S(_0286_),
    .X(_0252_));
 sky130_fd_sc_hd__mux2_1 _0387_ (.A0(wbs_dat_i[5]),
    .A1(\reg_num_sv[3][5] ),
    .S(_0286_),
    .X(_0251_));
 sky130_fd_sc_hd__mux2_1 _0388_ (.A0(wbs_dat_i[4]),
    .A1(\reg_num_sv[3][4] ),
    .S(_0286_),
    .X(_0250_));
 sky130_fd_sc_hd__mux2_1 _0389_ (.A0(wbs_dat_i[3]),
    .A1(\reg_num_sv[3][3] ),
    .S(_0286_),
    .X(_0249_));
 sky130_fd_sc_hd__mux2_1 _0390_ (.A0(wbs_dat_i[2]),
    .A1(\reg_num_sv[3][2] ),
    .S(_0286_),
    .X(_0248_));
 sky130_fd_sc_hd__mux2_1 _0391_ (.A0(wbs_dat_i[1]),
    .A1(\reg_num_sv[3][1] ),
    .S(_0286_),
    .X(_0247_));
 sky130_fd_sc_hd__mux2_1 _0392_ (.A0(wbs_dat_i[0]),
    .A1(\reg_num_sv[3][0] ),
    .S(_0286_),
    .X(_0246_));
 sky130_fd_sc_hd__nand2b_2 _0393_ (.A_N(wbs_adr_i[2]),
    .B(wbs_adr_i[3]),
    .Y(_0287_));
 sky130_fd_sc_hd__nor2_2 _0394_ (.A(_0283_),
    .B(_0287_),
    .Y(_0288_));
 sky130_fd_sc_hd__or3_2 _0395_ (.A(_0281_),
    .B(_0283_),
    .C(_0287_),
    .X(_0289_));
 sky130_fd_sc_hd__mux2_1 _0396_ (.A0(wbs_dat_i[7]),
    .A1(\reg_num_sv[2][7] ),
    .S(_0289_),
    .X(_0245_));
 sky130_fd_sc_hd__mux2_1 _0397_ (.A0(wbs_dat_i[6]),
    .A1(\reg_num_sv[2][6] ),
    .S(_0289_),
    .X(_0244_));
 sky130_fd_sc_hd__mux2_1 _0398_ (.A0(wbs_dat_i[5]),
    .A1(\reg_num_sv[2][5] ),
    .S(_0289_),
    .X(_0243_));
 sky130_fd_sc_hd__mux2_1 _0399_ (.A0(wbs_dat_i[4]),
    .A1(\reg_num_sv[2][4] ),
    .S(_0289_),
    .X(_0242_));
 sky130_fd_sc_hd__mux2_1 _0400_ (.A0(wbs_dat_i[3]),
    .A1(\reg_num_sv[2][3] ),
    .S(_0289_),
    .X(_0241_));
 sky130_fd_sc_hd__mux2_1 _0401_ (.A0(wbs_dat_i[2]),
    .A1(\reg_num_sv[2][2] ),
    .S(_0289_),
    .X(_0240_));
 sky130_fd_sc_hd__mux2_1 _0402_ (.A0(wbs_dat_i[1]),
    .A1(\reg_num_sv[2][1] ),
    .S(_0289_),
    .X(_0239_));
 sky130_fd_sc_hd__mux2_1 _0403_ (.A0(wbs_dat_i[0]),
    .A1(\reg_num_sv[2][0] ),
    .S(_0289_),
    .X(_0238_));
 sky130_fd_sc_hd__nand2b_2 _0404_ (.A_N(wbs_adr_i[3]),
    .B(wbs_adr_i[2]),
    .Y(_0290_));
 sky130_fd_sc_hd__nor2_2 _0405_ (.A(_0283_),
    .B(_0290_),
    .Y(_0291_));
 sky130_fd_sc_hd__or3_2 _0406_ (.A(_0281_),
    .B(_0283_),
    .C(_0290_),
    .X(_0292_));
 sky130_fd_sc_hd__mux2_1 _0407_ (.A0(wbs_dat_i[7]),
    .A1(\reg_num_sv[1][7] ),
    .S(_0292_),
    .X(_0237_));
 sky130_fd_sc_hd__mux2_1 _0408_ (.A0(wbs_dat_i[6]),
    .A1(\reg_num_sv[1][6] ),
    .S(_0292_),
    .X(_0236_));
 sky130_fd_sc_hd__mux2_1 _0409_ (.A0(wbs_dat_i[5]),
    .A1(\reg_num_sv[1][5] ),
    .S(_0292_),
    .X(_0235_));
 sky130_fd_sc_hd__mux2_1 _0410_ (.A0(wbs_dat_i[4]),
    .A1(\reg_num_sv[1][4] ),
    .S(_0292_),
    .X(_0234_));
 sky130_fd_sc_hd__mux2_1 _0411_ (.A0(wbs_dat_i[3]),
    .A1(\reg_num_sv[1][3] ),
    .S(_0292_),
    .X(_0233_));
 sky130_fd_sc_hd__mux2_1 _0412_ (.A0(wbs_dat_i[2]),
    .A1(\reg_num_sv[1][2] ),
    .S(_0292_),
    .X(_0232_));
 sky130_fd_sc_hd__mux2_1 _0413_ (.A0(wbs_dat_i[1]),
    .A1(\reg_num_sv[1][1] ),
    .S(_0292_),
    .X(_0231_));
 sky130_fd_sc_hd__mux2_1 _0414_ (.A0(wbs_dat_i[0]),
    .A1(\reg_num_sv[1][0] ),
    .S(_0292_),
    .X(_0230_));
 sky130_fd_sc_hd__nor2_2 _0415_ (.A(_0277_),
    .B(_0283_),
    .Y(_0293_));
 sky130_fd_sc_hd__or3_2 _0416_ (.A(_0277_),
    .B(_0281_),
    .C(_0283_),
    .X(_0294_));
 sky130_fd_sc_hd__mux2_1 _0417_ (.A0(wbs_dat_i[7]),
    .A1(\reg_num_sv[0][7] ),
    .S(_0294_),
    .X(_0229_));
 sky130_fd_sc_hd__mux2_1 _0418_ (.A0(wbs_dat_i[6]),
    .A1(\reg_num_sv[0][6] ),
    .S(_0294_),
    .X(_0228_));
 sky130_fd_sc_hd__mux2_1 _0419_ (.A0(wbs_dat_i[5]),
    .A1(\reg_num_sv[0][5] ),
    .S(_0294_),
    .X(_0227_));
 sky130_fd_sc_hd__mux2_1 _0420_ (.A0(wbs_dat_i[4]),
    .A1(\reg_num_sv[0][4] ),
    .S(_0294_),
    .X(_0226_));
 sky130_fd_sc_hd__mux2_1 _0421_ (.A0(wbs_dat_i[3]),
    .A1(\reg_num_sv[0][3] ),
    .S(_0294_),
    .X(_0225_));
 sky130_fd_sc_hd__mux2_1 _0422_ (.A0(wbs_dat_i[2]),
    .A1(\reg_num_sv[0][2] ),
    .S(_0294_),
    .X(_0224_));
 sky130_fd_sc_hd__mux2_1 _0423_ (.A0(wbs_dat_i[1]),
    .A1(\reg_num_sv[0][1] ),
    .S(_0294_),
    .X(_0223_));
 sky130_fd_sc_hd__mux2_1 _0424_ (.A0(wbs_dat_i[0]),
    .A1(\reg_num_sv[0][0] ),
    .S(_0294_),
    .X(_0222_));
 sky130_fd_sc_hd__nor3_2 _0425_ (.A(_0276_),
    .B(_0278_),
    .C(_0287_),
    .Y(_0000_));
 sky130_fd_sc_hd__nor3_2 _0426_ (.A(_0278_),
    .B(_0281_),
    .C(_0287_),
    .Y(_0295_));
 sky130_fd_sc_hd__mux2_1 _0427_ (.A0(\reg_alpha_wr[23] ),
    .A1(wbs_dat_i[23]),
    .S(_0295_),
    .X(_0221_));
 sky130_fd_sc_hd__mux2_1 _0428_ (.A0(\reg_alpha_wr[22] ),
    .A1(wbs_dat_i[22]),
    .S(_0295_),
    .X(_0220_));
 sky130_fd_sc_hd__mux2_1 _0429_ (.A0(\reg_alpha_wr[21] ),
    .A1(wbs_dat_i[21]),
    .S(_0295_),
    .X(_0219_));
 sky130_fd_sc_hd__mux2_1 _0430_ (.A0(\reg_alpha_wr[20] ),
    .A1(wbs_dat_i[20]),
    .S(_0295_),
    .X(_0218_));
 sky130_fd_sc_hd__mux2_1 _0431_ (.A0(\reg_alpha_wr[19] ),
    .A1(wbs_dat_i[19]),
    .S(_0295_),
    .X(_0217_));
 sky130_fd_sc_hd__mux2_1 _0432_ (.A0(\reg_alpha_wr[18] ),
    .A1(wbs_dat_i[18]),
    .S(_0295_),
    .X(_0216_));
 sky130_fd_sc_hd__mux2_1 _0433_ (.A0(\reg_alpha_wr[17] ),
    .A1(wbs_dat_i[17]),
    .S(_0295_),
    .X(_0215_));
 sky130_fd_sc_hd__mux2_1 _0434_ (.A0(\reg_alpha_wr[16] ),
    .A1(wbs_dat_i[16]),
    .S(_0295_),
    .X(_0214_));
 sky130_fd_sc_hd__mux2_1 _0435_ (.A0(\reg_alpha_wr[15] ),
    .A1(wbs_dat_i[15]),
    .S(_0295_),
    .X(_0213_));
 sky130_fd_sc_hd__mux2_1 _0436_ (.A0(\reg_alpha_wr[14] ),
    .A1(wbs_dat_i[14]),
    .S(_0295_),
    .X(_0212_));
 sky130_fd_sc_hd__mux2_1 _0437_ (.A0(\reg_alpha_wr[13] ),
    .A1(wbs_dat_i[13]),
    .S(_0295_),
    .X(_0211_));
 sky130_fd_sc_hd__mux2_1 _0438_ (.A0(\reg_alpha_wr[12] ),
    .A1(wbs_dat_i[12]),
    .S(_0295_),
    .X(_0210_));
 sky130_fd_sc_hd__mux2_1 _0439_ (.A0(\reg_alpha_wr[11] ),
    .A1(wbs_dat_i[11]),
    .S(_0295_),
    .X(_0209_));
 sky130_fd_sc_hd__mux2_1 _0440_ (.A0(\reg_alpha_wr[10] ),
    .A1(wbs_dat_i[10]),
    .S(_0295_),
    .X(_0208_));
 sky130_fd_sc_hd__mux2_1 _0441_ (.A0(\reg_alpha_wr[9] ),
    .A1(wbs_dat_i[9]),
    .S(_0295_),
    .X(_0207_));
 sky130_fd_sc_hd__mux2_1 _0442_ (.A0(\reg_alpha_wr[8] ),
    .A1(wbs_dat_i[8]),
    .S(_0295_),
    .X(_0206_));
 sky130_fd_sc_hd__mux2_1 _0443_ (.A0(\reg_alpha_wr[7] ),
    .A1(wbs_dat_i[7]),
    .S(_0295_),
    .X(_0205_));
 sky130_fd_sc_hd__mux2_1 _0444_ (.A0(\reg_alpha_wr[6] ),
    .A1(wbs_dat_i[6]),
    .S(_0295_),
    .X(_0204_));
 sky130_fd_sc_hd__mux2_1 _0445_ (.A0(\reg_alpha_wr[5] ),
    .A1(wbs_dat_i[5]),
    .S(_0295_),
    .X(_0203_));
 sky130_fd_sc_hd__mux2_1 _0446_ (.A0(\reg_alpha_wr[4] ),
    .A1(wbs_dat_i[4]),
    .S(_0295_),
    .X(_0202_));
 sky130_fd_sc_hd__mux2_1 _0447_ (.A0(\reg_alpha_wr[3] ),
    .A1(wbs_dat_i[3]),
    .S(_0295_),
    .X(_0201_));
 sky130_fd_sc_hd__mux2_1 _0448_ (.A0(\reg_alpha_wr[2] ),
    .A1(wbs_dat_i[2]),
    .S(_0295_),
    .X(_0200_));
 sky130_fd_sc_hd__mux2_1 _0449_ (.A0(\reg_alpha_wr[1] ),
    .A1(wbs_dat_i[1]),
    .S(_0295_),
    .X(_0199_));
 sky130_fd_sc_hd__mux2_1 _0450_ (.A0(\reg_alpha_wr[0] ),
    .A1(wbs_dat_i[0]),
    .S(_0295_),
    .X(_0198_));
 sky130_fd_sc_hd__nor3_2 _0451_ (.A(_0278_),
    .B(_0281_),
    .C(_0290_),
    .Y(_0296_));
 sky130_fd_sc_hd__mux2_1 _0452_ (.A0(\reg_param_wr[18] ),
    .A1(wbs_dat_i[18]),
    .S(_0296_),
    .X(_0197_));
 sky130_fd_sc_hd__mux2_1 _0453_ (.A0(\reg_param_wr[17] ),
    .A1(wbs_dat_i[17]),
    .S(_0296_),
    .X(_0196_));
 sky130_fd_sc_hd__mux2_1 _0454_ (.A0(\reg_param_wr[16] ),
    .A1(wbs_dat_i[16]),
    .S(_0296_),
    .X(_0195_));
 sky130_fd_sc_hd__mux2_1 _0455_ (.A0(\reg_param_wr[15] ),
    .A1(wbs_dat_i[15]),
    .S(_0296_),
    .X(_0194_));
 sky130_fd_sc_hd__mux2_1 _0456_ (.A0(\reg_param_wr[14] ),
    .A1(wbs_dat_i[14]),
    .S(_0296_),
    .X(_0193_));
 sky130_fd_sc_hd__mux2_1 _0457_ (.A0(\reg_param_wr[13] ),
    .A1(wbs_dat_i[13]),
    .S(_0296_),
    .X(_0192_));
 sky130_fd_sc_hd__mux2_1 _0458_ (.A0(\reg_param_wr[12] ),
    .A1(wbs_dat_i[12]),
    .S(_0296_),
    .X(_0191_));
 sky130_fd_sc_hd__mux2_1 _0459_ (.A0(\reg_param_wr[11] ),
    .A1(wbs_dat_i[11]),
    .S(_0296_),
    .X(_0190_));
 sky130_fd_sc_hd__mux2_1 _0460_ (.A0(\reg_param_wr[10] ),
    .A1(wbs_dat_i[10]),
    .S(_0296_),
    .X(_0189_));
 sky130_fd_sc_hd__mux2_1 _0461_ (.A0(\reg_param_wr[9] ),
    .A1(wbs_dat_i[9]),
    .S(_0296_),
    .X(_0188_));
 sky130_fd_sc_hd__mux2_1 _0462_ (.A0(\reg_param_wr[8] ),
    .A1(wbs_dat_i[8]),
    .S(_0296_),
    .X(_0187_));
 sky130_fd_sc_hd__mux2_1 _0463_ (.A0(\reg_param_wr[7] ),
    .A1(wbs_dat_i[7]),
    .S(_0296_),
    .X(_0186_));
 sky130_fd_sc_hd__mux2_1 _0464_ (.A0(\reg_param_wr[6] ),
    .A1(wbs_dat_i[6]),
    .S(_0296_),
    .X(_0185_));
 sky130_fd_sc_hd__mux2_1 _0465_ (.A0(\reg_param_wr[5] ),
    .A1(wbs_dat_i[5]),
    .S(_0296_),
    .X(_0184_));
 sky130_fd_sc_hd__mux2_1 _0466_ (.A0(\reg_param_wr[4] ),
    .A1(wbs_dat_i[4]),
    .S(_0296_),
    .X(_0183_));
 sky130_fd_sc_hd__mux2_1 _0467_ (.A0(\reg_param_wr[3] ),
    .A1(wbs_dat_i[3]),
    .S(_0296_),
    .X(_0182_));
 sky130_fd_sc_hd__mux2_1 _0468_ (.A0(\reg_param_wr[2] ),
    .A1(wbs_dat_i[2]),
    .S(_0296_),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_1 _0469_ (.A0(\reg_param_wr[1] ),
    .A1(wbs_dat_i[1]),
    .S(_0296_),
    .X(_0180_));
 sky130_fd_sc_hd__mux2_1 _0470_ (.A0(\reg_param_wr[0] ),
    .A1(wbs_dat_i[0]),
    .S(_0296_),
    .X(_0179_));
 sky130_fd_sc_hd__or4_2 _0471_ (.A(wbs_adr_i[4]),
    .B(wbs_adr_i[5]),
    .C(wbs_adr_i[7]),
    .D(wbs_adr_i[6]),
    .X(_0297_));
 sky130_fd_sc_hd__nor2_2 _0472_ (.A(_0284_),
    .B(_0297_),
    .Y(_0298_));
 sky130_fd_sc_hd__or3_2 _0473_ (.A(_0281_),
    .B(_0284_),
    .C(_0297_),
    .X(_0299_));
 sky130_fd_sc_hd__mux2_1 _0474_ (.A0(wbs_dat_i[9]),
    .A1(\reg_num_samples[9] ),
    .S(_0299_),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_1 _0475_ (.A0(wbs_dat_i[8]),
    .A1(\reg_num_samples[8] ),
    .S(_0299_),
    .X(_0177_));
 sky130_fd_sc_hd__mux2_1 _0476_ (.A0(wbs_dat_i[7]),
    .A1(\reg_num_samples[7] ),
    .S(_0299_),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_1 _0477_ (.A0(wbs_dat_i[6]),
    .A1(\reg_num_samples[6] ),
    .S(_0299_),
    .X(_0175_));
 sky130_fd_sc_hd__mux2_1 _0478_ (.A0(wbs_dat_i[5]),
    .A1(\reg_num_samples[5] ),
    .S(_0299_),
    .X(_0174_));
 sky130_fd_sc_hd__mux2_1 _0479_ (.A0(wbs_dat_i[4]),
    .A1(\reg_num_samples[4] ),
    .S(_0299_),
    .X(_0173_));
 sky130_fd_sc_hd__mux2_1 _0480_ (.A0(wbs_dat_i[3]),
    .A1(\reg_num_samples[3] ),
    .S(_0299_),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_1 _0481_ (.A0(wbs_dat_i[2]),
    .A1(\reg_num_samples[2] ),
    .S(_0299_),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_1 _0482_ (.A0(wbs_dat_i[1]),
    .A1(\reg_num_samples[1] ),
    .S(_0299_),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_1 _0483_ (.A0(wbs_dat_i[0]),
    .A1(\reg_num_samples[0] ),
    .S(_0299_),
    .X(_0169_));
 sky130_fd_sc_hd__nor2_2 _0484_ (.A(_0290_),
    .B(_0297_),
    .Y(_0300_));
 sky130_fd_sc_hd__or3_2 _0485_ (.A(_0281_),
    .B(_0290_),
    .C(_0297_),
    .X(_0301_));
 sky130_fd_sc_hd__mux2_1 _0486_ (.A0(wbs_dat_i[31]),
    .A1(\reg_control[31] ),
    .S(_0301_),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_1 _0487_ (.A0(wbs_dat_i[30]),
    .A1(\reg_control[30] ),
    .S(_0301_),
    .X(_0167_));
 sky130_fd_sc_hd__mux2_1 _0488_ (.A0(wbs_dat_i[29]),
    .A1(\reg_control[29] ),
    .S(_0301_),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_1 _0489_ (.A0(wbs_dat_i[28]),
    .A1(\reg_control[28] ),
    .S(_0301_),
    .X(_0165_));
 sky130_fd_sc_hd__mux2_1 _0490_ (.A0(wbs_dat_i[27]),
    .A1(\reg_control[27] ),
    .S(_0301_),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_1 _0491_ (.A0(wbs_dat_i[26]),
    .A1(\reg_control[26] ),
    .S(_0301_),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_1 _0492_ (.A0(wbs_dat_i[25]),
    .A1(\reg_control[25] ),
    .S(_0301_),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_1 _0493_ (.A0(wbs_dat_i[24]),
    .A1(\reg_control[24] ),
    .S(_0301_),
    .X(_0161_));
 sky130_fd_sc_hd__mux2_1 _0494_ (.A0(wbs_dat_i[23]),
    .A1(\reg_control[23] ),
    .S(_0301_),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_1 _0495_ (.A0(wbs_dat_i[22]),
    .A1(\reg_control[22] ),
    .S(_0301_),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_1 _0496_ (.A0(wbs_dat_i[21]),
    .A1(\reg_control[21] ),
    .S(_0301_),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_1 _0497_ (.A0(wbs_dat_i[20]),
    .A1(\reg_control[20] ),
    .S(_0301_),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_1 _0498_ (.A0(wbs_dat_i[19]),
    .A1(\reg_control[19] ),
    .S(_0301_),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _0499_ (.A0(wbs_dat_i[18]),
    .A1(\reg_control[18] ),
    .S(_0301_),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _0500_ (.A0(wbs_dat_i[17]),
    .A1(\reg_control[17] ),
    .S(_0301_),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_1 _0501_ (.A0(wbs_dat_i[16]),
    .A1(\reg_control[16] ),
    .S(_0301_),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_1 _0502_ (.A0(wbs_dat_i[15]),
    .A1(\reg_control[15] ),
    .S(_0301_),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_1 _0503_ (.A0(wbs_dat_i[14]),
    .A1(\reg_control[14] ),
    .S(_0301_),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_1 _0504_ (.A0(wbs_dat_i[13]),
    .A1(\reg_control[13] ),
    .S(_0301_),
    .X(_0150_));
 sky130_fd_sc_hd__mux2_1 _0505_ (.A0(wbs_dat_i[12]),
    .A1(\reg_control[12] ),
    .S(_0301_),
    .X(_0149_));
 sky130_fd_sc_hd__mux2_1 _0506_ (.A0(wbs_dat_i[11]),
    .A1(\reg_control[11] ),
    .S(_0301_),
    .X(_0148_));
 sky130_fd_sc_hd__mux2_1 _0507_ (.A0(wbs_dat_i[10]),
    .A1(\reg_control[10] ),
    .S(_0301_),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_1 _0508_ (.A0(wbs_dat_i[9]),
    .A1(\reg_control[9] ),
    .S(_0301_),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_1 _0509_ (.A0(wbs_dat_i[8]),
    .A1(\reg_control[8] ),
    .S(_0301_),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_1 _0510_ (.A0(wbs_dat_i[7]),
    .A1(\reg_control[7] ),
    .S(_0301_),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _0511_ (.A0(wbs_dat_i[6]),
    .A1(\reg_control[6] ),
    .S(_0301_),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_1 _0512_ (.A0(wbs_dat_i[5]),
    .A1(\reg_control[5] ),
    .S(_0301_),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_1 _0513_ (.A0(wbs_dat_i[4]),
    .A1(\reg_control[4] ),
    .S(_0301_),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_1 _0514_ (.A0(wbs_dat_i[3]),
    .A1(\reg_control[3] ),
    .S(_0301_),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_1 _0515_ (.A0(wbs_dat_i[2]),
    .A1(\reg_control[2] ),
    .S(_0301_),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _0516_ (.A0(wbs_dat_i[1]),
    .A1(\reg_control[1] ),
    .S(_0301_),
    .X(_0138_));
 sky130_fd_sc_hd__a21o_2 _0517_ (.A1(batch_active),
    .A2(_0266_),
    .B1(\reg_control[0] ),
    .X(_0132_));
 sky130_fd_sc_hd__a22o_2 _0518_ (.A1(\reg_num_sv[3][0] ),
    .A2(_0285_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][0] ),
    .X(_0302_));
 sky130_fd_sc_hd__a221o_2 _0519_ (.A1(\reg_num_sv[2][0] ),
    .A2(_0288_),
    .B1(_0291_),
    .B2(\reg_num_sv[1][0] ),
    .C1(_0302_),
    .X(_0303_));
 sky130_fd_sc_hd__a22o_2 _0520_ (.A1(\reg_num_sv[4][0] ),
    .A2(_0279_),
    .B1(_0300_),
    .B2(\reg_control[0] ),
    .X(_0304_));
 sky130_fd_sc_hd__nor2_2 _0521_ (.A(_0287_),
    .B(_0297_),
    .Y(_0305_));
 sky130_fd_sc_hd__a221o_2 _0522_ (.A1(\reg_num_samples[0] ),
    .A2(_0298_),
    .B1(_0305_),
    .B2(svm_done),
    .C1(_0304_),
    .X(_0306_));
 sky130_fd_sc_hd__or2_2 _0523_ (.A(_0303_),
    .B(_0306_),
    .X(wbs_dat_o[0]));
 sky130_fd_sc_hd__a22o_2 _0524_ (.A1(\reg_num_sv[2][1] ),
    .A2(_0288_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][1] ),
    .X(_0307_));
 sky130_fd_sc_hd__a22o_2 _0525_ (.A1(\reg_num_sv[3][1] ),
    .A2(_0285_),
    .B1(_0291_),
    .B2(\reg_num_sv[1][1] ),
    .X(_0308_));
 sky130_fd_sc_hd__a22o_2 _0526_ (.A1(\reg_control[1] ),
    .A2(_0300_),
    .B1(_0305_),
    .B2(svm_error),
    .X(_0309_));
 sky130_fd_sc_hd__or3_2 _0527_ (.A(_0307_),
    .B(_0308_),
    .C(_0309_),
    .X(_0310_));
 sky130_fd_sc_hd__a221o_2 _0528_ (.A1(\reg_num_sv[4][1] ),
    .A2(_0279_),
    .B1(_0298_),
    .B2(\reg_num_samples[1] ),
    .C1(_0310_),
    .X(wbs_dat_o[1]));
 sky130_fd_sc_hd__a22o_2 _0529_ (.A1(\reg_num_sv[2][2] ),
    .A2(_0288_),
    .B1(_0291_),
    .B2(\reg_num_sv[1][2] ),
    .X(_0311_));
 sky130_fd_sc_hd__a221o_2 _0530_ (.A1(\reg_num_sv[3][2] ),
    .A2(_0285_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][2] ),
    .C1(_0311_),
    .X(_0312_));
 sky130_fd_sc_hd__a22o_2 _0531_ (.A1(\reg_num_sv[4][2] ),
    .A2(_0279_),
    .B1(_0305_),
    .B2(io_out[6]),
    .X(_0313_));
 sky130_fd_sc_hd__a221o_2 _0532_ (.A1(\reg_num_samples[2] ),
    .A2(_0298_),
    .B1(_0300_),
    .B2(\reg_control[2] ),
    .C1(_0313_),
    .X(_0314_));
 sky130_fd_sc_hd__or2_2 _0533_ (.A(_0312_),
    .B(_0314_),
    .X(wbs_dat_o[2]));
 sky130_fd_sc_hd__a22o_2 _0534_ (.A1(\reg_num_sv[1][3] ),
    .A2(_0291_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][3] ),
    .X(_0315_));
 sky130_fd_sc_hd__a221o_2 _0535_ (.A1(\reg_num_sv[3][3] ),
    .A2(_0285_),
    .B1(_0288_),
    .B2(\reg_num_sv[2][3] ),
    .C1(_0315_),
    .X(_0316_));
 sky130_fd_sc_hd__a22o_2 _0536_ (.A1(\reg_num_sv[4][3] ),
    .A2(_0279_),
    .B1(_0298_),
    .B2(\reg_num_samples[3] ),
    .X(_0317_));
 sky130_fd_sc_hd__a221o_2 _0537_ (.A1(\reg_control[3] ),
    .A2(_0300_),
    .B1(_0305_),
    .B2(io_out[7]),
    .C1(_0317_),
    .X(_0318_));
 sky130_fd_sc_hd__or2_2 _0538_ (.A(_0316_),
    .B(_0318_),
    .X(wbs_dat_o[3]));
 sky130_fd_sc_hd__a22o_2 _0539_ (.A1(\reg_num_sv[2][4] ),
    .A2(_0288_),
    .B1(_0291_),
    .B2(\reg_num_sv[1][4] ),
    .X(_0319_));
 sky130_fd_sc_hd__a22o_2 _0540_ (.A1(\reg_num_sv[3][4] ),
    .A2(_0285_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][4] ),
    .X(_0320_));
 sky130_fd_sc_hd__a22o_2 _0541_ (.A1(\reg_num_sv[4][4] ),
    .A2(_0279_),
    .B1(_0298_),
    .B2(\reg_num_samples[4] ),
    .X(_0321_));
 sky130_fd_sc_hd__a221o_2 _0542_ (.A1(\reg_control[4] ),
    .A2(_0300_),
    .B1(_0305_),
    .B2(io_out[8]),
    .C1(_0321_),
    .X(_0322_));
 sky130_fd_sc_hd__or3_2 _0543_ (.A(_0319_),
    .B(_0320_),
    .C(_0322_),
    .X(wbs_dat_o[4]));
 sky130_fd_sc_hd__a22o_2 _0544_ (.A1(\reg_num_sv[3][5] ),
    .A2(_0285_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][5] ),
    .X(_0323_));
 sky130_fd_sc_hd__a221o_2 _0545_ (.A1(\reg_num_sv[2][5] ),
    .A2(_0288_),
    .B1(_0291_),
    .B2(\reg_num_sv[1][5] ),
    .C1(_0323_),
    .X(_0324_));
 sky130_fd_sc_hd__a22o_2 _0546_ (.A1(\reg_num_sv[4][5] ),
    .A2(_0279_),
    .B1(_0298_),
    .B2(\reg_num_samples[5] ),
    .X(_0325_));
 sky130_fd_sc_hd__a221o_2 _0547_ (.A1(\reg_control[5] ),
    .A2(_0300_),
    .B1(_0305_),
    .B2(io_out[9]),
    .C1(_0325_),
    .X(_0326_));
 sky130_fd_sc_hd__or2_2 _0548_ (.A(_0324_),
    .B(_0326_),
    .X(wbs_dat_o[5]));
 sky130_fd_sc_hd__a22o_2 _0549_ (.A1(\reg_num_sv[1][6] ),
    .A2(_0291_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][6] ),
    .X(_0327_));
 sky130_fd_sc_hd__a22o_2 _0550_ (.A1(\reg_num_sv[3][6] ),
    .A2(_0285_),
    .B1(_0288_),
    .B2(\reg_num_sv[2][6] ),
    .X(_0328_));
 sky130_fd_sc_hd__a22o_2 _0551_ (.A1(\reg_control[6] ),
    .A2(_0300_),
    .B1(_0305_),
    .B2(io_out[0]),
    .X(_0329_));
 sky130_fd_sc_hd__or3_2 _0552_ (.A(_0327_),
    .B(_0328_),
    .C(_0329_),
    .X(_0330_));
 sky130_fd_sc_hd__a221o_2 _0553_ (.A1(\reg_num_sv[4][6] ),
    .A2(_0279_),
    .B1(_0298_),
    .B2(\reg_num_samples[6] ),
    .C1(_0330_),
    .X(wbs_dat_o[6]));
 sky130_fd_sc_hd__a22o_2 _0554_ (.A1(\reg_num_sv[3][7] ),
    .A2(_0285_),
    .B1(_0293_),
    .B2(\reg_num_sv[0][7] ),
    .X(_0331_));
 sky130_fd_sc_hd__a221o_2 _0555_ (.A1(\reg_num_sv[2][7] ),
    .A2(_0288_),
    .B1(_0291_),
    .B2(\reg_num_sv[1][7] ),
    .C1(_0331_),
    .X(_0332_));
 sky130_fd_sc_hd__a22o_2 _0556_ (.A1(\reg_num_sv[4][7] ),
    .A2(_0279_),
    .B1(_0300_),
    .B2(\reg_control[7] ),
    .X(_0333_));
 sky130_fd_sc_hd__a221o_2 _0557_ (.A1(\reg_num_samples[7] ),
    .A2(_0298_),
    .B1(_0305_),
    .B2(io_out[1]),
    .C1(_0333_),
    .X(_0334_));
 sky130_fd_sc_hd__or2_2 _0558_ (.A(_0332_),
    .B(_0334_),
    .X(wbs_dat_o[7]));
 sky130_fd_sc_hd__a22o_2 _0559_ (.A1(\reg_num_samples[8] ),
    .A2(_0298_),
    .B1(_0305_),
    .B2(io_out[2]),
    .X(_0335_));
 sky130_fd_sc_hd__a21o_2 _0560_ (.A1(\reg_control[8] ),
    .A2(_0300_),
    .B1(_0335_),
    .X(wbs_dat_o[8]));
 sky130_fd_sc_hd__a22o_2 _0561_ (.A1(\reg_control[9] ),
    .A2(_0300_),
    .B1(_0305_),
    .B2(sample_rdy_w),
    .X(_0336_));
 sky130_fd_sc_hd__a21o_2 _0562_ (.A1(\reg_num_samples[9] ),
    .A2(_0298_),
    .B1(_0336_),
    .X(wbs_dat_o[9]));
 sky130_fd_sc_hd__and2_2 _0563_ (.A(\reg_control[10] ),
    .B(_0300_),
    .X(wbs_dat_o[10]));
 sky130_fd_sc_hd__and2_2 _0564_ (.A(\reg_control[11] ),
    .B(_0300_),
    .X(wbs_dat_o[11]));
 sky130_fd_sc_hd__and2_2 _0565_ (.A(\reg_control[12] ),
    .B(_0300_),
    .X(wbs_dat_o[12]));
 sky130_fd_sc_hd__and2_2 _0566_ (.A(\reg_control[13] ),
    .B(_0300_),
    .X(wbs_dat_o[13]));
 sky130_fd_sc_hd__and2_2 _0567_ (.A(\reg_control[14] ),
    .B(_0300_),
    .X(wbs_dat_o[14]));
 sky130_fd_sc_hd__and2_2 _0568_ (.A(\reg_control[15] ),
    .B(_0300_),
    .X(wbs_dat_o[15]));
 sky130_fd_sc_hd__and2_2 _0569_ (.A(\reg_control[16] ),
    .B(_0300_),
    .X(wbs_dat_o[16]));
 sky130_fd_sc_hd__and2_2 _0570_ (.A(\reg_control[17] ),
    .B(_0300_),
    .X(wbs_dat_o[17]));
 sky130_fd_sc_hd__and2_2 _0571_ (.A(\reg_control[18] ),
    .B(_0300_),
    .X(wbs_dat_o[18]));
 sky130_fd_sc_hd__and2_2 _0572_ (.A(\reg_control[19] ),
    .B(_0300_),
    .X(wbs_dat_o[19]));
 sky130_fd_sc_hd__and2_2 _0573_ (.A(\reg_control[20] ),
    .B(_0300_),
    .X(wbs_dat_o[20]));
 sky130_fd_sc_hd__and2_2 _0574_ (.A(\reg_control[21] ),
    .B(_0300_),
    .X(wbs_dat_o[21]));
 sky130_fd_sc_hd__and2_2 _0575_ (.A(\reg_control[22] ),
    .B(_0300_),
    .X(wbs_dat_o[22]));
 sky130_fd_sc_hd__and2_2 _0576_ (.A(\reg_control[23] ),
    .B(_0300_),
    .X(wbs_dat_o[23]));
 sky130_fd_sc_hd__and2_2 _0577_ (.A(\reg_control[24] ),
    .B(_0300_),
    .X(wbs_dat_o[24]));
 sky130_fd_sc_hd__and2_2 _0578_ (.A(\reg_control[25] ),
    .B(_0300_),
    .X(wbs_dat_o[25]));
 sky130_fd_sc_hd__and2_2 _0579_ (.A(\reg_control[26] ),
    .B(_0300_),
    .X(wbs_dat_o[26]));
 sky130_fd_sc_hd__and2_2 _0580_ (.A(\reg_control[27] ),
    .B(_0300_),
    .X(wbs_dat_o[27]));
 sky130_fd_sc_hd__and2_2 _0581_ (.A(\reg_control[28] ),
    .B(_0300_),
    .X(wbs_dat_o[28]));
 sky130_fd_sc_hd__and2_2 _0582_ (.A(\reg_control[29] ),
    .B(_0300_),
    .X(wbs_dat_o[29]));
 sky130_fd_sc_hd__and2_2 _0583_ (.A(\reg_control[30] ),
    .B(_0300_),
    .X(wbs_dat_o[30]));
 sky130_fd_sc_hd__and2_2 _0584_ (.A(\reg_control[31] ),
    .B(_0300_),
    .X(wbs_dat_o[31]));
 sky130_fd_sc_hd__or4_2 _0585_ (.A(\drain_cnt[3] ),
    .B(\drain_cnt[2] ),
    .C(\drain_cnt[1] ),
    .D(\drain_cnt[0] ),
    .X(_0337_));
 sky130_fd_sc_hd__or3_2 _0586_ (.A(\drain_cnt[5] ),
    .B(\drain_cnt[4] ),
    .C(_0337_),
    .X(_0338_));
 sky130_fd_sc_hd__or4b_2 _0587_ (.A(io_out[7]),
    .B(io_out[6]),
    .C(io_out[8]),
    .D_N(io_out[9]),
    .X(_0339_));
 sky130_fd_sc_hd__or3b_2 _0588_ (.A(\reg_control[0] ),
    .B(wb_rst_i),
    .C_N(_0339_),
    .X(_0340_));
 sky130_fd_sc_hd__or3_2 _0589_ (.A(batch_active),
    .B(_0338_),
    .C(_0340_),
    .X(svm_clk_en));
 sky130_fd_sc_hd__nor4_2 _0590_ (.A(_0263_),
    .B(_0276_),
    .C(_0278_),
    .D(_0290_),
    .Y(_0002_));
 sky130_fd_sc_hd__and4_2 _0591_ (.A(wbs_dat_i[0]),
    .B(wbs_we_i),
    .C(wb_valid),
    .D(_0300_),
    .X(_0001_));
 sky130_fd_sc_hd__nor2_2 _0592_ (.A(svm_done),
    .B(_0340_),
    .Y(_0341_));
 sky130_fd_sc_hd__and3b_2 _0593_ (.A_N(\drain_cnt[0] ),
    .B(_0338_),
    .C(_0341_),
    .X(_0133_));
 sky130_fd_sc_hd__and2_2 _0594_ (.A(\drain_cnt[1] ),
    .B(\drain_cnt[0] ),
    .X(_0342_));
 sky130_fd_sc_hd__nor3b_2 _0595_ (.A(\drain_cnt[1] ),
    .B(\drain_cnt[0] ),
    .C_N(_0338_),
    .Y(_0343_));
 sky130_fd_sc_hd__o21a_2 _0596_ (.A1(_0342_),
    .A2(_0343_),
    .B1(_0341_),
    .X(_0134_));
 sky130_fd_sc_hd__or2_2 _0597_ (.A(\drain_cnt[2] ),
    .B(_0343_),
    .X(_0344_));
 sky130_fd_sc_hd__o311a_2 _0598_ (.A1(_0264_),
    .A2(\drain_cnt[1] ),
    .A3(\drain_cnt[0] ),
    .B1(_0341_),
    .C1(_0344_),
    .X(_0135_));
 sky130_fd_sc_hd__and2b_2 _0599_ (.A_N(_0337_),
    .B(_0338_),
    .X(_0345_));
 sky130_fd_sc_hd__o31a_2 _0600_ (.A1(\drain_cnt[2] ),
    .A2(\drain_cnt[1] ),
    .A3(\drain_cnt[0] ),
    .B1(\drain_cnt[3] ),
    .X(_0346_));
 sky130_fd_sc_hd__o21a_2 _0601_ (.A1(_0345_),
    .A2(_0346_),
    .B1(_0341_),
    .X(_0136_));
 sky130_fd_sc_hd__or3b_2 _0602_ (.A(\drain_cnt[4] ),
    .B(_0337_),
    .C_N(\drain_cnt[5] ),
    .X(_0347_));
 sky130_fd_sc_hd__a21bo_2 _0603_ (.A1(\drain_cnt[4] ),
    .A2(_0337_),
    .B1_N(_0347_),
    .X(_0348_));
 sky130_fd_sc_hd__and2_2 _0604_ (.A(_0341_),
    .B(_0348_),
    .X(_0137_));
 sky130_fd_sc_hd__o21ai_2 _0605_ (.A1(\drain_cnt[4] ),
    .A2(_0337_),
    .B1(\drain_cnt[5] ),
    .Y(_0349_));
 sky130_fd_sc_hd__a21oi_2 _0606_ (.A1(_0266_),
    .A2(_0349_),
    .B1(_0340_),
    .Y(_0254_));
 sky130_fd_sc_hd__inv_2 _0607_ (.A(wb_rst_i),
    .Y(_0003_));
 sky130_fd_sc_hd__inv_2 _0608_ (.A(wb_rst_i),
    .Y(_0004_));
 sky130_fd_sc_hd__inv_2 _0609_ (.A(wb_rst_i),
    .Y(_0005_));
 sky130_fd_sc_hd__inv_2 _0610_ (.A(wb_rst_i),
    .Y(_0006_));
 sky130_fd_sc_hd__inv_2 _0611_ (.A(wb_rst_i),
    .Y(_0007_));
 sky130_fd_sc_hd__inv_2 _0612_ (.A(wb_rst_i),
    .Y(_0008_));
 sky130_fd_sc_hd__inv_2 _0613_ (.A(wb_rst_i),
    .Y(_0009_));
 sky130_fd_sc_hd__inv_2 _0614_ (.A(wb_rst_i),
    .Y(_0010_));
 sky130_fd_sc_hd__inv_2 _0615_ (.A(wb_rst_i),
    .Y(_0011_));
 sky130_fd_sc_hd__inv_2 _0616_ (.A(wb_rst_i),
    .Y(_0012_));
 sky130_fd_sc_hd__inv_2 _0617_ (.A(wb_rst_i),
    .Y(_0013_));
 sky130_fd_sc_hd__inv_2 _0618_ (.A(wb_rst_i),
    .Y(_0014_));
 sky130_fd_sc_hd__inv_2 _0619_ (.A(wb_rst_i),
    .Y(_0015_));
 sky130_fd_sc_hd__inv_2 _0620_ (.A(wb_rst_i),
    .Y(_0016_));
 sky130_fd_sc_hd__inv_2 _0621_ (.A(wb_rst_i),
    .Y(_0017_));
 sky130_fd_sc_hd__inv_2 _0622_ (.A(wb_rst_i),
    .Y(_0018_));
 sky130_fd_sc_hd__inv_2 _0623_ (.A(wb_rst_i),
    .Y(_0019_));
 sky130_fd_sc_hd__inv_2 _0624_ (.A(wb_rst_i),
    .Y(_0020_));
 sky130_fd_sc_hd__inv_2 _0625_ (.A(wb_rst_i),
    .Y(_0021_));
 sky130_fd_sc_hd__inv_2 _0626_ (.A(wb_rst_i),
    .Y(_0022_));
 sky130_fd_sc_hd__inv_2 _0627_ (.A(wb_rst_i),
    .Y(_0023_));
 sky130_fd_sc_hd__inv_2 _0628_ (.A(wb_rst_i),
    .Y(_0024_));
 sky130_fd_sc_hd__inv_2 _0629_ (.A(wb_rst_i),
    .Y(_0025_));
 sky130_fd_sc_hd__inv_2 _0630_ (.A(wb_rst_i),
    .Y(_0026_));
 sky130_fd_sc_hd__inv_2 _0631_ (.A(wb_rst_i),
    .Y(_0027_));
 sky130_fd_sc_hd__inv_2 _0632_ (.A(wb_rst_i),
    .Y(_0028_));
 sky130_fd_sc_hd__inv_2 _0633_ (.A(wb_rst_i),
    .Y(_0029_));
 sky130_fd_sc_hd__inv_2 _0634_ (.A(wb_rst_i),
    .Y(_0030_));
 sky130_fd_sc_hd__inv_2 _0635_ (.A(wb_rst_i),
    .Y(_0031_));
 sky130_fd_sc_hd__inv_2 _0636_ (.A(wb_rst_i),
    .Y(_0032_));
 sky130_fd_sc_hd__inv_2 _0637_ (.A(wb_rst_i),
    .Y(_0033_));
 sky130_fd_sc_hd__inv_2 _0638_ (.A(wb_rst_i),
    .Y(_0034_));
 sky130_fd_sc_hd__inv_2 _0639_ (.A(wb_rst_i),
    .Y(_0035_));
 sky130_fd_sc_hd__inv_2 _0640_ (.A(wb_rst_i),
    .Y(_0036_));
 sky130_fd_sc_hd__inv_2 _0641_ (.A(wb_rst_i),
    .Y(_0037_));
 sky130_fd_sc_hd__inv_2 _0642_ (.A(wb_rst_i),
    .Y(_0038_));
 sky130_fd_sc_hd__inv_2 _0643_ (.A(wb_rst_i),
    .Y(_0039_));
 sky130_fd_sc_hd__inv_2 _0644_ (.A(wb_rst_i),
    .Y(_0040_));
 sky130_fd_sc_hd__inv_2 _0645_ (.A(wb_rst_i),
    .Y(_0041_));
 sky130_fd_sc_hd__inv_2 _0646_ (.A(wb_rst_i),
    .Y(_0042_));
 sky130_fd_sc_hd__inv_2 _0647_ (.A(wb_rst_i),
    .Y(_0043_));
 sky130_fd_sc_hd__inv_2 _0648_ (.A(wb_rst_i),
    .Y(_0044_));
 sky130_fd_sc_hd__inv_2 _0649_ (.A(wb_rst_i),
    .Y(_0045_));
 sky130_fd_sc_hd__inv_2 _0650_ (.A(wb_rst_i),
    .Y(_0046_));
 sky130_fd_sc_hd__inv_2 _0651_ (.A(wb_rst_i),
    .Y(_0047_));
 sky130_fd_sc_hd__inv_2 _0652_ (.A(wb_rst_i),
    .Y(_0048_));
 sky130_fd_sc_hd__inv_2 _0653_ (.A(wb_rst_i),
    .Y(_0049_));
 sky130_fd_sc_hd__inv_2 _0654_ (.A(wb_rst_i),
    .Y(_0050_));
 sky130_fd_sc_hd__inv_2 _0655_ (.A(wb_rst_i),
    .Y(_0051_));
 sky130_fd_sc_hd__inv_2 _0656_ (.A(wb_rst_i),
    .Y(_0052_));
 sky130_fd_sc_hd__inv_2 _0657_ (.A(wb_rst_i),
    .Y(_0053_));
 sky130_fd_sc_hd__inv_2 _0658_ (.A(wb_rst_i),
    .Y(_0054_));
 sky130_fd_sc_hd__inv_2 _0659_ (.A(wb_rst_i),
    .Y(_0055_));
 sky130_fd_sc_hd__inv_2 _0660_ (.A(wb_rst_i),
    .Y(_0056_));
 sky130_fd_sc_hd__inv_2 _0661_ (.A(wb_rst_i),
    .Y(_0057_));
 sky130_fd_sc_hd__inv_2 _0662_ (.A(wb_rst_i),
    .Y(_0058_));
 sky130_fd_sc_hd__inv_2 _0663_ (.A(wb_rst_i),
    .Y(_0059_));
 sky130_fd_sc_hd__inv_2 _0664_ (.A(wb_rst_i),
    .Y(_0060_));
 sky130_fd_sc_hd__inv_2 _0665_ (.A(wb_rst_i),
    .Y(_0061_));
 sky130_fd_sc_hd__inv_2 _0666_ (.A(wb_rst_i),
    .Y(_0062_));
 sky130_fd_sc_hd__inv_2 _0667_ (.A(wb_rst_i),
    .Y(_0063_));
 sky130_fd_sc_hd__inv_2 _0668_ (.A(wb_rst_i),
    .Y(_0064_));
 sky130_fd_sc_hd__inv_2 _0669_ (.A(wb_rst_i),
    .Y(_0065_));
 sky130_fd_sc_hd__inv_2 _0670_ (.A(wb_rst_i),
    .Y(_0066_));
 sky130_fd_sc_hd__inv_2 _0671_ (.A(wb_rst_i),
    .Y(_0067_));
 sky130_fd_sc_hd__inv_2 _0672_ (.A(wb_rst_i),
    .Y(_0068_));
 sky130_fd_sc_hd__inv_2 _0673_ (.A(wb_rst_i),
    .Y(_0069_));
 sky130_fd_sc_hd__inv_2 _0674_ (.A(wb_rst_i),
    .Y(_0070_));
 sky130_fd_sc_hd__inv_2 _0675_ (.A(wb_rst_i),
    .Y(_0071_));
 sky130_fd_sc_hd__inv_2 _0676_ (.A(wb_rst_i),
    .Y(_0072_));
 sky130_fd_sc_hd__inv_2 _0677_ (.A(wb_rst_i),
    .Y(_0073_));
 sky130_fd_sc_hd__inv_2 _0678_ (.A(wb_rst_i),
    .Y(_0074_));
 sky130_fd_sc_hd__inv_2 _0679_ (.A(wb_rst_i),
    .Y(_0075_));
 sky130_fd_sc_hd__inv_2 _0680_ (.A(wb_rst_i),
    .Y(_0076_));
 sky130_fd_sc_hd__inv_2 _0681_ (.A(wb_rst_i),
    .Y(_0077_));
 sky130_fd_sc_hd__inv_2 _0682_ (.A(wb_rst_i),
    .Y(_0078_));
 sky130_fd_sc_hd__inv_2 _0683_ (.A(wb_rst_i),
    .Y(_0079_));
 sky130_fd_sc_hd__inv_2 _0684_ (.A(wb_rst_i),
    .Y(_0080_));
 sky130_fd_sc_hd__inv_2 _0685_ (.A(wb_rst_i),
    .Y(_0081_));
 sky130_fd_sc_hd__inv_2 _0686_ (.A(wb_rst_i),
    .Y(_0082_));
 sky130_fd_sc_hd__inv_2 _0687_ (.A(wb_rst_i),
    .Y(_0083_));
 sky130_fd_sc_hd__inv_2 _0688_ (.A(wb_rst_i),
    .Y(_0084_));
 sky130_fd_sc_hd__inv_2 _0689_ (.A(wb_rst_i),
    .Y(_0085_));
 sky130_fd_sc_hd__inv_2 _0690_ (.A(wb_rst_i),
    .Y(_0086_));
 sky130_fd_sc_hd__inv_2 _0691_ (.A(wb_rst_i),
    .Y(_0087_));
 sky130_fd_sc_hd__inv_2 _0692_ (.A(wb_rst_i),
    .Y(_0088_));
 sky130_fd_sc_hd__inv_2 _0693_ (.A(wb_rst_i),
    .Y(_0089_));
 sky130_fd_sc_hd__inv_2 _0694_ (.A(wb_rst_i),
    .Y(_0090_));
 sky130_fd_sc_hd__inv_2 _0695_ (.A(wb_rst_i),
    .Y(_0091_));
 sky130_fd_sc_hd__inv_2 _0696_ (.A(wb_rst_i),
    .Y(_0092_));
 sky130_fd_sc_hd__inv_2 _0697_ (.A(wb_rst_i),
    .Y(_0093_));
 sky130_fd_sc_hd__inv_2 _0698_ (.A(wb_rst_i),
    .Y(_0094_));
 sky130_fd_sc_hd__inv_2 _0699_ (.A(wb_rst_i),
    .Y(_0095_));
 sky130_fd_sc_hd__inv_2 _0700_ (.A(wb_rst_i),
    .Y(_0096_));
 sky130_fd_sc_hd__inv_2 _0701_ (.A(wb_rst_i),
    .Y(_0097_));
 sky130_fd_sc_hd__inv_2 _0702_ (.A(wb_rst_i),
    .Y(_0098_));
 sky130_fd_sc_hd__inv_2 _0703_ (.A(wb_rst_i),
    .Y(_0099_));
 sky130_fd_sc_hd__inv_2 _0704_ (.A(wb_rst_i),
    .Y(_0100_));
 sky130_fd_sc_hd__inv_2 _0705_ (.A(wb_rst_i),
    .Y(_0101_));
 sky130_fd_sc_hd__inv_2 _0706_ (.A(wb_rst_i),
    .Y(_0102_));
 sky130_fd_sc_hd__inv_2 _0707_ (.A(wb_rst_i),
    .Y(_0103_));
 sky130_fd_sc_hd__inv_2 _0708_ (.A(wb_rst_i),
    .Y(_0104_));
 sky130_fd_sc_hd__inv_2 _0709_ (.A(wb_rst_i),
    .Y(_0105_));
 sky130_fd_sc_hd__inv_2 _0710_ (.A(wb_rst_i),
    .Y(_0106_));
 sky130_fd_sc_hd__inv_2 _0711_ (.A(wb_rst_i),
    .Y(_0107_));
 sky130_fd_sc_hd__inv_2 _0712_ (.A(wb_rst_i),
    .Y(_0108_));
 sky130_fd_sc_hd__inv_2 _0713_ (.A(wb_rst_i),
    .Y(_0109_));
 sky130_fd_sc_hd__inv_2 _0714_ (.A(wb_rst_i),
    .Y(_0110_));
 sky130_fd_sc_hd__inv_2 _0715_ (.A(wb_rst_i),
    .Y(_0111_));
 sky130_fd_sc_hd__inv_2 _0716_ (.A(wb_rst_i),
    .Y(_0112_));
 sky130_fd_sc_hd__inv_2 _0717_ (.A(wb_rst_i),
    .Y(_0113_));
 sky130_fd_sc_hd__inv_2 _0718_ (.A(wb_rst_i),
    .Y(_0114_));
 sky130_fd_sc_hd__inv_2 _0719_ (.A(wb_rst_i),
    .Y(_0115_));
 sky130_fd_sc_hd__inv_2 _0720_ (.A(wb_rst_i),
    .Y(_0116_));
 sky130_fd_sc_hd__inv_2 _0721_ (.A(wb_rst_i),
    .Y(_0117_));
 sky130_fd_sc_hd__inv_2 _0722_ (.A(wb_rst_i),
    .Y(_0118_));
 sky130_fd_sc_hd__inv_2 _0723_ (.A(wb_rst_i),
    .Y(_0119_));
 sky130_fd_sc_hd__inv_2 _0724_ (.A(wb_rst_i),
    .Y(_0120_));
 sky130_fd_sc_hd__inv_2 _0725_ (.A(wb_rst_i),
    .Y(_0121_));
 sky130_fd_sc_hd__inv_2 _0726_ (.A(wb_rst_i),
    .Y(_0122_));
 sky130_fd_sc_hd__inv_2 _0727_ (.A(wb_rst_i),
    .Y(_0123_));
 sky130_fd_sc_hd__inv_2 _0728_ (.A(wb_rst_i),
    .Y(_0124_));
 sky130_fd_sc_hd__inv_2 _0729_ (.A(wb_rst_i),
    .Y(_0125_));
 sky130_fd_sc_hd__inv_2 _0730_ (.A(wb_rst_i),
    .Y(_0126_));
 sky130_fd_sc_hd__inv_2 _0731_ (.A(wb_rst_i),
    .Y(_0127_));
 sky130_fd_sc_hd__inv_2 _0732_ (.A(wb_rst_i),
    .Y(_0128_));
 sky130_fd_sc_hd__inv_2 _0733_ (.A(wb_rst_i),
    .Y(_0129_));
 sky130_fd_sc_hd__inv_2 _0734_ (.A(wb_rst_i),
    .Y(_0130_));
 sky130_fd_sc_hd__inv_2 _0735_ (.A(wb_rst_i),
    .Y(_0131_));
 sky130_fd_sc_hd__dfrtp_2 _0736_ (.CLK(wb_clk_i),
    .D(_0132_),
    .RESET_B(_0003_),
    .Q(batch_active));
 sky130_fd_sc_hd__dfxtp_2 _0737_ (.CLK(wb_clk_i),
    .D(_0133_),
    .Q(\drain_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _0738_ (.CLK(wb_clk_i),
    .D(_0134_),
    .Q(\drain_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_2 _0739_ (.CLK(wb_clk_i),
    .D(_0135_),
    .Q(\drain_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_2 _0740_ (.CLK(wb_clk_i),
    .D(_0136_),
    .Q(\drain_cnt[3] ));
 sky130_fd_sc_hd__dfxtp_2 _0741_ (.CLK(wb_clk_i),
    .D(_0137_),
    .Q(\drain_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_2 _0742_ (.CLK(wb_clk_i),
    .D(wb_valid),
    .RESET_B(_0004_),
    .Q(wbs_ack_o));
 sky130_fd_sc_hd__dfrtp_2 _0743_ (.CLK(wb_clk_i),
    .D(_0138_),
    .RESET_B(_0005_),
    .Q(\reg_control[1] ));
 sky130_fd_sc_hd__dfrtp_2 _0744_ (.CLK(wb_clk_i),
    .D(_0139_),
    .RESET_B(_0006_),
    .Q(\reg_control[2] ));
 sky130_fd_sc_hd__dfstp_2 _0745_ (.CLK(wb_clk_i),
    .D(_0140_),
    .SET_B(_0007_),
    .Q(\reg_control[3] ));
 sky130_fd_sc_hd__dfrtp_2 _0746_ (.CLK(wb_clk_i),
    .D(_0141_),
    .RESET_B(_0008_),
    .Q(\reg_control[4] ));
 sky130_fd_sc_hd__dfrtp_2 _0747_ (.CLK(wb_clk_i),
    .D(_0142_),
    .RESET_B(_0009_),
    .Q(\reg_control[5] ));
 sky130_fd_sc_hd__dfrtp_2 _0748_ (.CLK(wb_clk_i),
    .D(_0143_),
    .RESET_B(_0010_),
    .Q(\reg_control[6] ));
 sky130_fd_sc_hd__dfrtp_2 _0749_ (.CLK(wb_clk_i),
    .D(_0144_),
    .RESET_B(_0011_),
    .Q(\reg_control[7] ));
 sky130_fd_sc_hd__dfrtp_2 _0750_ (.CLK(wb_clk_i),
    .D(_0145_),
    .RESET_B(_0012_),
    .Q(\reg_control[8] ));
 sky130_fd_sc_hd__dfrtp_2 _0751_ (.CLK(wb_clk_i),
    .D(_0146_),
    .RESET_B(_0013_),
    .Q(\reg_control[9] ));
 sky130_fd_sc_hd__dfrtp_2 _0752_ (.CLK(wb_clk_i),
    .D(_0147_),
    .RESET_B(_0014_),
    .Q(\reg_control[10] ));
 sky130_fd_sc_hd__dfrtp_2 _0753_ (.CLK(wb_clk_i),
    .D(_0148_),
    .RESET_B(_0015_),
    .Q(\reg_control[11] ));
 sky130_fd_sc_hd__dfrtp_2 _0754_ (.CLK(wb_clk_i),
    .D(_0149_),
    .RESET_B(_0016_),
    .Q(\reg_control[12] ));
 sky130_fd_sc_hd__dfrtp_2 _0755_ (.CLK(wb_clk_i),
    .D(_0150_),
    .RESET_B(_0017_),
    .Q(\reg_control[13] ));
 sky130_fd_sc_hd__dfrtp_2 _0756_ (.CLK(wb_clk_i),
    .D(_0151_),
    .RESET_B(_0018_),
    .Q(\reg_control[14] ));
 sky130_fd_sc_hd__dfrtp_2 _0757_ (.CLK(wb_clk_i),
    .D(_0152_),
    .RESET_B(_0019_),
    .Q(\reg_control[15] ));
 sky130_fd_sc_hd__dfrtp_2 _0758_ (.CLK(wb_clk_i),
    .D(_0153_),
    .RESET_B(_0020_),
    .Q(\reg_control[16] ));
 sky130_fd_sc_hd__dfrtp_2 _0759_ (.CLK(wb_clk_i),
    .D(_0154_),
    .RESET_B(_0021_),
    .Q(\reg_control[17] ));
 sky130_fd_sc_hd__dfrtp_2 _0760_ (.CLK(wb_clk_i),
    .D(_0155_),
    .RESET_B(_0022_),
    .Q(\reg_control[18] ));
 sky130_fd_sc_hd__dfrtp_2 _0761_ (.CLK(wb_clk_i),
    .D(_0156_),
    .RESET_B(_0023_),
    .Q(\reg_control[19] ));
 sky130_fd_sc_hd__dfrtp_2 _0762_ (.CLK(wb_clk_i),
    .D(_0157_),
    .RESET_B(_0024_),
    .Q(\reg_control[20] ));
 sky130_fd_sc_hd__dfrtp_2 _0763_ (.CLK(wb_clk_i),
    .D(_0158_),
    .RESET_B(_0025_),
    .Q(\reg_control[21] ));
 sky130_fd_sc_hd__dfrtp_2 _0764_ (.CLK(wb_clk_i),
    .D(_0159_),
    .RESET_B(_0026_),
    .Q(\reg_control[22] ));
 sky130_fd_sc_hd__dfrtp_2 _0765_ (.CLK(wb_clk_i),
    .D(_0160_),
    .RESET_B(_0027_),
    .Q(\reg_control[23] ));
 sky130_fd_sc_hd__dfrtp_2 _0766_ (.CLK(wb_clk_i),
    .D(_0161_),
    .RESET_B(_0028_),
    .Q(\reg_control[24] ));
 sky130_fd_sc_hd__dfrtp_2 _0767_ (.CLK(wb_clk_i),
    .D(_0162_),
    .RESET_B(_0029_),
    .Q(\reg_control[25] ));
 sky130_fd_sc_hd__dfrtp_2 _0768_ (.CLK(wb_clk_i),
    .D(_0163_),
    .RESET_B(_0030_),
    .Q(\reg_control[26] ));
 sky130_fd_sc_hd__dfrtp_2 _0769_ (.CLK(wb_clk_i),
    .D(_0164_),
    .RESET_B(_0031_),
    .Q(\reg_control[27] ));
 sky130_fd_sc_hd__dfrtp_2 _0770_ (.CLK(wb_clk_i),
    .D(_0165_),
    .RESET_B(_0032_),
    .Q(\reg_control[28] ));
 sky130_fd_sc_hd__dfrtp_2 _0771_ (.CLK(wb_clk_i),
    .D(_0166_),
    .RESET_B(_0033_),
    .Q(\reg_control[29] ));
 sky130_fd_sc_hd__dfrtp_2 _0772_ (.CLK(wb_clk_i),
    .D(_0167_),
    .RESET_B(_0034_),
    .Q(\reg_control[30] ));
 sky130_fd_sc_hd__dfrtp_2 _0773_ (.CLK(wb_clk_i),
    .D(_0168_),
    .RESET_B(_0035_),
    .Q(\reg_control[31] ));
 sky130_fd_sc_hd__dfrtp_2 _0774_ (.CLK(wb_clk_i),
    .D(_0169_),
    .RESET_B(_0036_),
    .Q(\reg_num_samples[0] ));
 sky130_fd_sc_hd__dfrtp_2 _0775_ (.CLK(wb_clk_i),
    .D(_0170_),
    .RESET_B(_0037_),
    .Q(\reg_num_samples[1] ));
 sky130_fd_sc_hd__dfrtp_2 _0776_ (.CLK(wb_clk_i),
    .D(_0171_),
    .RESET_B(_0038_),
    .Q(\reg_num_samples[2] ));
 sky130_fd_sc_hd__dfrtp_2 _0777_ (.CLK(wb_clk_i),
    .D(_0172_),
    .RESET_B(_0039_),
    .Q(\reg_num_samples[3] ));
 sky130_fd_sc_hd__dfrtp_2 _0778_ (.CLK(wb_clk_i),
    .D(_0173_),
    .RESET_B(_0040_),
    .Q(\reg_num_samples[4] ));
 sky130_fd_sc_hd__dfrtp_2 _0779_ (.CLK(wb_clk_i),
    .D(_0174_),
    .RESET_B(_0041_),
    .Q(\reg_num_samples[5] ));
 sky130_fd_sc_hd__dfrtp_2 _0780_ (.CLK(wb_clk_i),
    .D(_0175_),
    .RESET_B(_0042_),
    .Q(\reg_num_samples[6] ));
 sky130_fd_sc_hd__dfrtp_2 _0781_ (.CLK(wb_clk_i),
    .D(_0176_),
    .RESET_B(_0043_),
    .Q(\reg_num_samples[7] ));
 sky130_fd_sc_hd__dfrtp_2 _0782_ (.CLK(wb_clk_i),
    .D(_0177_),
    .RESET_B(_0044_),
    .Q(\reg_num_samples[8] ));
 sky130_fd_sc_hd__dfrtp_2 _0783_ (.CLK(wb_clk_i),
    .D(_0178_),
    .RESET_B(_0045_),
    .Q(\reg_num_samples[9] ));
 sky130_fd_sc_hd__dfrtp_2 _0784_ (.CLK(wb_clk_i),
    .D(_0179_),
    .RESET_B(_0046_),
    .Q(\reg_param_wr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _0785_ (.CLK(wb_clk_i),
    .D(_0180_),
    .RESET_B(_0047_),
    .Q(\reg_param_wr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _0786_ (.CLK(wb_clk_i),
    .D(_0181_),
    .RESET_B(_0048_),
    .Q(\reg_param_wr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _0787_ (.CLK(wb_clk_i),
    .D(_0182_),
    .RESET_B(_0049_),
    .Q(\reg_param_wr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _0788_ (.CLK(wb_clk_i),
    .D(_0183_),
    .RESET_B(_0050_),
    .Q(\reg_param_wr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _0789_ (.CLK(wb_clk_i),
    .D(_0184_),
    .RESET_B(_0051_),
    .Q(\reg_param_wr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _0790_ (.CLK(wb_clk_i),
    .D(_0185_),
    .RESET_B(_0052_),
    .Q(\reg_param_wr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _0791_ (.CLK(wb_clk_i),
    .D(_0186_),
    .RESET_B(_0053_),
    .Q(\reg_param_wr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _0792_ (.CLK(wb_clk_i),
    .D(_0187_),
    .RESET_B(_0054_),
    .Q(\reg_param_wr[8] ));
 sky130_fd_sc_hd__dfrtp_2 _0793_ (.CLK(wb_clk_i),
    .D(_0188_),
    .RESET_B(_0055_),
    .Q(\reg_param_wr[9] ));
 sky130_fd_sc_hd__dfrtp_2 _0794_ (.CLK(wb_clk_i),
    .D(_0189_),
    .RESET_B(_0056_),
    .Q(\reg_param_wr[10] ));
 sky130_fd_sc_hd__dfrtp_2 _0795_ (.CLK(wb_clk_i),
    .D(_0190_),
    .RESET_B(_0057_),
    .Q(\reg_param_wr[11] ));
 sky130_fd_sc_hd__dfrtp_2 _0796_ (.CLK(wb_clk_i),
    .D(_0191_),
    .RESET_B(_0058_),
    .Q(\reg_param_wr[12] ));
 sky130_fd_sc_hd__dfrtp_2 _0797_ (.CLK(wb_clk_i),
    .D(_0192_),
    .RESET_B(_0059_),
    .Q(\reg_param_wr[13] ));
 sky130_fd_sc_hd__dfrtp_2 _0798_ (.CLK(wb_clk_i),
    .D(_0193_),
    .RESET_B(_0060_),
    .Q(\reg_param_wr[14] ));
 sky130_fd_sc_hd__dfrtp_2 _0799_ (.CLK(wb_clk_i),
    .D(_0194_),
    .RESET_B(_0061_),
    .Q(\reg_param_wr[15] ));
 sky130_fd_sc_hd__dfrtp_2 _0800_ (.CLK(wb_clk_i),
    .D(_0195_),
    .RESET_B(_0062_),
    .Q(\reg_param_wr[16] ));
 sky130_fd_sc_hd__dfrtp_2 _0801_ (.CLK(wb_clk_i),
    .D(_0196_),
    .RESET_B(_0063_),
    .Q(\reg_param_wr[17] ));
 sky130_fd_sc_hd__dfrtp_2 _0802_ (.CLK(wb_clk_i),
    .D(_0197_),
    .RESET_B(_0064_),
    .Q(\reg_param_wr[18] ));
 sky130_fd_sc_hd__dfrtp_2 _0803_ (.CLK(wb_clk_i),
    .D(_0000_),
    .RESET_B(_0065_),
    .Q(alpha_wr_en_r));
 sky130_fd_sc_hd__dfrtp_2 _0804_ (.CLK(wb_clk_i),
    .D(_0198_),
    .RESET_B(_0066_),
    .Q(\reg_alpha_wr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _0805_ (.CLK(wb_clk_i),
    .D(_0199_),
    .RESET_B(_0067_),
    .Q(\reg_alpha_wr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _0806_ (.CLK(wb_clk_i),
    .D(_0200_),
    .RESET_B(_0068_),
    .Q(\reg_alpha_wr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _0807_ (.CLK(wb_clk_i),
    .D(_0201_),
    .RESET_B(_0069_),
    .Q(\reg_alpha_wr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _0808_ (.CLK(wb_clk_i),
    .D(_0202_),
    .RESET_B(_0070_),
    .Q(\reg_alpha_wr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _0809_ (.CLK(wb_clk_i),
    .D(_0203_),
    .RESET_B(_0071_),
    .Q(\reg_alpha_wr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _0810_ (.CLK(wb_clk_i),
    .D(_0204_),
    .RESET_B(_0072_),
    .Q(\reg_alpha_wr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _0811_ (.CLK(wb_clk_i),
    .D(_0205_),
    .RESET_B(_0073_),
    .Q(\reg_alpha_wr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _0812_ (.CLK(wb_clk_i),
    .D(_0206_),
    .RESET_B(_0074_),
    .Q(\reg_alpha_wr[8] ));
 sky130_fd_sc_hd__dfrtp_2 _0813_ (.CLK(wb_clk_i),
    .D(_0207_),
    .RESET_B(_0075_),
    .Q(\reg_alpha_wr[9] ));
 sky130_fd_sc_hd__dfrtp_2 _0814_ (.CLK(wb_clk_i),
    .D(_0208_),
    .RESET_B(_0076_),
    .Q(\reg_alpha_wr[10] ));
 sky130_fd_sc_hd__dfrtp_2 _0815_ (.CLK(wb_clk_i),
    .D(_0209_),
    .RESET_B(_0077_),
    .Q(\reg_alpha_wr[11] ));
 sky130_fd_sc_hd__dfrtp_2 _0816_ (.CLK(wb_clk_i),
    .D(_0210_),
    .RESET_B(_0078_),
    .Q(\reg_alpha_wr[12] ));
 sky130_fd_sc_hd__dfrtp_2 _0817_ (.CLK(wb_clk_i),
    .D(_0211_),
    .RESET_B(_0079_),
    .Q(\reg_alpha_wr[13] ));
 sky130_fd_sc_hd__dfrtp_2 _0818_ (.CLK(wb_clk_i),
    .D(_0212_),
    .RESET_B(_0080_),
    .Q(\reg_alpha_wr[14] ));
 sky130_fd_sc_hd__dfrtp_2 _0819_ (.CLK(wb_clk_i),
    .D(_0213_),
    .RESET_B(_0081_),
    .Q(\reg_alpha_wr[15] ));
 sky130_fd_sc_hd__dfrtp_2 _0820_ (.CLK(wb_clk_i),
    .D(_0214_),
    .RESET_B(_0082_),
    .Q(\reg_alpha_wr[16] ));
 sky130_fd_sc_hd__dfrtp_2 _0821_ (.CLK(wb_clk_i),
    .D(_0215_),
    .RESET_B(_0083_),
    .Q(\reg_alpha_wr[17] ));
 sky130_fd_sc_hd__dfrtp_2 _0822_ (.CLK(wb_clk_i),
    .D(_0216_),
    .RESET_B(_0084_),
    .Q(\reg_alpha_wr[18] ));
 sky130_fd_sc_hd__dfrtp_2 _0823_ (.CLK(wb_clk_i),
    .D(_0217_),
    .RESET_B(_0085_),
    .Q(\reg_alpha_wr[19] ));
 sky130_fd_sc_hd__dfrtp_2 _0824_ (.CLK(wb_clk_i),
    .D(_0218_),
    .RESET_B(_0086_),
    .Q(\reg_alpha_wr[20] ));
 sky130_fd_sc_hd__dfrtp_2 _0825_ (.CLK(wb_clk_i),
    .D(_0219_),
    .RESET_B(_0087_),
    .Q(\reg_alpha_wr[21] ));
 sky130_fd_sc_hd__dfrtp_2 _0826_ (.CLK(wb_clk_i),
    .D(_0220_),
    .RESET_B(_0088_),
    .Q(\reg_alpha_wr[22] ));
 sky130_fd_sc_hd__dfrtp_2 _0827_ (.CLK(wb_clk_i),
    .D(_0221_),
    .RESET_B(_0089_),
    .Q(\reg_alpha_wr[23] ));
 sky130_fd_sc_hd__dfrtp_2 _0828_ (.CLK(wb_clk_i),
    .D(_0222_),
    .RESET_B(_0090_),
    .Q(\reg_num_sv[0][0] ));
 sky130_fd_sc_hd__dfstp_2 _0829_ (.CLK(wb_clk_i),
    .D(_0223_),
    .SET_B(_0091_),
    .Q(\reg_num_sv[0][1] ));
 sky130_fd_sc_hd__dfrtp_2 _0830_ (.CLK(wb_clk_i),
    .D(_0224_),
    .RESET_B(_0092_),
    .Q(\reg_num_sv[0][2] ));
 sky130_fd_sc_hd__dfrtp_2 _0831_ (.CLK(wb_clk_i),
    .D(_0225_),
    .RESET_B(_0093_),
    .Q(\reg_num_sv[0][3] ));
 sky130_fd_sc_hd__dfstp_2 _0832_ (.CLK(wb_clk_i),
    .D(_0226_),
    .SET_B(_0094_),
    .Q(\reg_num_sv[0][4] ));
 sky130_fd_sc_hd__dfstp_2 _0833_ (.CLK(wb_clk_i),
    .D(_0227_),
    .SET_B(_0095_),
    .Q(\reg_num_sv[0][5] ));
 sky130_fd_sc_hd__dfrtp_2 _0834_ (.CLK(wb_clk_i),
    .D(_0228_),
    .RESET_B(_0096_),
    .Q(\reg_num_sv[0][6] ));
 sky130_fd_sc_hd__dfrtp_2 _0835_ (.CLK(wb_clk_i),
    .D(_0229_),
    .RESET_B(_0097_),
    .Q(\reg_num_sv[0][7] ));
 sky130_fd_sc_hd__dfrtp_2 _0836_ (.CLK(wb_clk_i),
    .D(_0001_),
    .RESET_B(_0098_),
    .Q(\reg_control[0] ));
 sky130_fd_sc_hd__dfrtp_2 _0837_ (.CLK(wb_clk_i),
    .D(_0230_),
    .RESET_B(_0099_),
    .Q(\reg_num_sv[1][0] ));
 sky130_fd_sc_hd__dfstp_2 _0838_ (.CLK(wb_clk_i),
    .D(_0231_),
    .SET_B(_0100_),
    .Q(\reg_num_sv[1][1] ));
 sky130_fd_sc_hd__dfrtp_2 _0839_ (.CLK(wb_clk_i),
    .D(_0232_),
    .RESET_B(_0101_),
    .Q(\reg_num_sv[1][2] ));
 sky130_fd_sc_hd__dfrtp_2 _0840_ (.CLK(wb_clk_i),
    .D(_0233_),
    .RESET_B(_0102_),
    .Q(\reg_num_sv[1][3] ));
 sky130_fd_sc_hd__dfstp_2 _0841_ (.CLK(wb_clk_i),
    .D(_0234_),
    .SET_B(_0103_),
    .Q(\reg_num_sv[1][4] ));
 sky130_fd_sc_hd__dfstp_2 _0842_ (.CLK(wb_clk_i),
    .D(_0235_),
    .SET_B(_0104_),
    .Q(\reg_num_sv[1][5] ));
 sky130_fd_sc_hd__dfrtp_2 _0843_ (.CLK(wb_clk_i),
    .D(_0236_),
    .RESET_B(_0105_),
    .Q(\reg_num_sv[1][6] ));
 sky130_fd_sc_hd__dfrtp_2 _0844_ (.CLK(wb_clk_i),
    .D(_0237_),
    .RESET_B(_0106_),
    .Q(\reg_num_sv[1][7] ));
 sky130_fd_sc_hd__dfrtp_2 _0845_ (.CLK(wb_clk_i),
    .D(_0238_),
    .RESET_B(_0107_),
    .Q(\reg_num_sv[2][0] ));
 sky130_fd_sc_hd__dfstp_2 _0846_ (.CLK(wb_clk_i),
    .D(_0239_),
    .SET_B(_0108_),
    .Q(\reg_num_sv[2][1] ));
 sky130_fd_sc_hd__dfrtp_2 _0847_ (.CLK(wb_clk_i),
    .D(_0240_),
    .RESET_B(_0109_),
    .Q(\reg_num_sv[2][2] ));
 sky130_fd_sc_hd__dfrtp_2 _0848_ (.CLK(wb_clk_i),
    .D(_0241_),
    .RESET_B(_0110_),
    .Q(\reg_num_sv[2][3] ));
 sky130_fd_sc_hd__dfstp_2 _0849_ (.CLK(wb_clk_i),
    .D(_0242_),
    .SET_B(_0111_),
    .Q(\reg_num_sv[2][4] ));
 sky130_fd_sc_hd__dfstp_2 _0850_ (.CLK(wb_clk_i),
    .D(_0243_),
    .SET_B(_0112_),
    .Q(\reg_num_sv[2][5] ));
 sky130_fd_sc_hd__dfrtp_2 _0851_ (.CLK(wb_clk_i),
    .D(_0244_),
    .RESET_B(_0113_),
    .Q(\reg_num_sv[2][6] ));
 sky130_fd_sc_hd__dfrtp_2 _0852_ (.CLK(wb_clk_i),
    .D(_0245_),
    .RESET_B(_0114_),
    .Q(\reg_num_sv[2][7] ));
 sky130_fd_sc_hd__dfrtp_2 _0853_ (.CLK(wb_clk_i),
    .D(_0002_),
    .RESET_B(_0115_),
    .Q(\reg_param_wr[19] ));
 sky130_fd_sc_hd__dfrtp_2 _0854_ (.CLK(wb_clk_i),
    .D(_0246_),
    .RESET_B(_0116_),
    .Q(\reg_num_sv[3][0] ));
 sky130_fd_sc_hd__dfstp_2 _0855_ (.CLK(wb_clk_i),
    .D(_0247_),
    .SET_B(_0117_),
    .Q(\reg_num_sv[3][1] ));
 sky130_fd_sc_hd__dfrtp_2 _0856_ (.CLK(wb_clk_i),
    .D(_0248_),
    .RESET_B(_0118_),
    .Q(\reg_num_sv[3][2] ));
 sky130_fd_sc_hd__dfrtp_2 _0857_ (.CLK(wb_clk_i),
    .D(_0249_),
    .RESET_B(_0119_),
    .Q(\reg_num_sv[3][3] ));
 sky130_fd_sc_hd__dfstp_2 _0858_ (.CLK(wb_clk_i),
    .D(_0250_),
    .SET_B(_0120_),
    .Q(\reg_num_sv[3][4] ));
 sky130_fd_sc_hd__dfstp_2 _0859_ (.CLK(wb_clk_i),
    .D(_0251_),
    .SET_B(_0121_),
    .Q(\reg_num_sv[3][5] ));
 sky130_fd_sc_hd__dfrtp_2 _0860_ (.CLK(wb_clk_i),
    .D(_0252_),
    .RESET_B(_0122_),
    .Q(\reg_num_sv[3][6] ));
 sky130_fd_sc_hd__dfrtp_2 _0861_ (.CLK(wb_clk_i),
    .D(_0253_),
    .RESET_B(_0123_),
    .Q(\reg_num_sv[3][7] ));
 sky130_fd_sc_hd__dfxtp_2 _0862_ (.CLK(wb_clk_i),
    .D(_0254_),
    .Q(\drain_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_2 _0863_ (.CLK(wb_clk_i),
    .D(_0255_),
    .RESET_B(_0124_),
    .Q(\reg_num_sv[4][0] ));
 sky130_fd_sc_hd__dfstp_2 _0864_ (.CLK(wb_clk_i),
    .D(_0256_),
    .SET_B(_0125_),
    .Q(\reg_num_sv[4][1] ));
 sky130_fd_sc_hd__dfrtp_2 _0865_ (.CLK(wb_clk_i),
    .D(_0257_),
    .RESET_B(_0126_),
    .Q(\reg_num_sv[4][2] ));
 sky130_fd_sc_hd__dfrtp_2 _0866_ (.CLK(wb_clk_i),
    .D(_0258_),
    .RESET_B(_0127_),
    .Q(\reg_num_sv[4][3] ));
 sky130_fd_sc_hd__dfstp_2 _0867_ (.CLK(wb_clk_i),
    .D(_0259_),
    .SET_B(_0128_),
    .Q(\reg_num_sv[4][4] ));
 sky130_fd_sc_hd__dfstp_2 _0868_ (.CLK(wb_clk_i),
    .D(_0260_),
    .SET_B(_0129_),
    .Q(\reg_num_sv[4][5] ));
 sky130_fd_sc_hd__dfrtp_2 _0869_ (.CLK(wb_clk_i),
    .D(_0261_),
    .RESET_B(_0130_),
    .Q(\reg_num_sv[4][6] ));
 sky130_fd_sc_hd__dfrtp_2 _0870_ (.CLK(wb_clk_i),
    .D(_0262_),
    .RESET_B(_0131_),
    .Q(\reg_num_sv[4][7] ));
 sky130_fd_sc_hd__conb_1 _0871_ (.HI(_0350_));
 sky130_fd_sc_hd__conb_1 _0872_ (.HI(io_oeb[30]));
 sky130_fd_sc_hd__conb_1 _0873_ (.HI(io_oeb[31]));
 sky130_fd_sc_hd__conb_1 _0874_ (.HI(io_oeb[32]));
 sky130_fd_sc_hd__conb_1 _0875_ (.HI(io_oeb[33]));
 sky130_fd_sc_hd__conb_1 _0876_ (.HI(io_oeb[34]));
 sky130_fd_sc_hd__conb_1 _0877_ (.HI(io_oeb[35]));
 sky130_fd_sc_hd__conb_1 _0878_ (.HI(io_oeb[36]));
 sky130_fd_sc_hd__conb_1 _0879_ (.HI(io_oeb[37]));
 sky130_fd_sc_hd__conb_1 _0880_ (.HI(la_oenb[0]));
 sky130_fd_sc_hd__conb_1 _0881_ (.HI(la_oenb[1]));
 sky130_fd_sc_hd__conb_1 _0882_ (.HI(la_oenb[2]));
 sky130_fd_sc_hd__conb_1 _0883_ (.HI(la_oenb[3]));
 sky130_fd_sc_hd__conb_1 _0884_ (.HI(la_oenb[4]));
 sky130_fd_sc_hd__conb_1 _0885_ (.HI(la_oenb[5]));
 sky130_fd_sc_hd__conb_1 _0886_ (.HI(la_oenb[6]));
 sky130_fd_sc_hd__conb_1 _0887_ (.HI(la_oenb[7]));
 sky130_fd_sc_hd__conb_1 _0888_ (.HI(la_oenb[8]));
 sky130_fd_sc_hd__conb_1 _0889_ (.HI(la_oenb[9]));
 sky130_fd_sc_hd__conb_1 _0890_ (.HI(la_oenb[10]));
 sky130_fd_sc_hd__conb_1 _0891_ (.HI(la_oenb[11]));
 sky130_fd_sc_hd__conb_1 _0892_ (.HI(la_oenb[12]));
 sky130_fd_sc_hd__conb_1 _0893_ (.HI(la_oenb[13]));
 sky130_fd_sc_hd__conb_1 _0894_ (.HI(la_oenb[14]));
 sky130_fd_sc_hd__conb_1 _0895_ (.HI(la_oenb[15]));
 sky130_fd_sc_hd__conb_1 _0896_ (.LO(io_oeb[0]));
 sky130_fd_sc_hd__conb_1 _0897_ (.LO(io_oeb[1]));
 sky130_fd_sc_hd__conb_1 _0898_ (.LO(io_oeb[2]));
 sky130_fd_sc_hd__conb_1 _0899_ (.LO(io_oeb[3]));
 sky130_fd_sc_hd__conb_1 _0900_ (.LO(io_oeb[4]));
 sky130_fd_sc_hd__conb_1 _0901_ (.LO(io_oeb[5]));
 sky130_fd_sc_hd__conb_1 _0902_ (.LO(io_oeb[6]));
 sky130_fd_sc_hd__conb_1 _0903_ (.LO(io_oeb[7]));
 sky130_fd_sc_hd__conb_1 _0904_ (.LO(io_oeb[8]));
 sky130_fd_sc_hd__conb_1 _0905_ (.LO(io_oeb[9]));
 sky130_fd_sc_hd__conb_1 _0906_ (.LO(io_oeb[10]));
 sky130_fd_sc_hd__conb_1 _0907_ (.LO(io_oeb[11]));
 sky130_fd_sc_hd__conb_1 _0908_ (.LO(io_oeb[12]));
 sky130_fd_sc_hd__conb_1 _0909_ (.LO(io_oeb[13]));
 sky130_fd_sc_hd__conb_1 _0910_ (.LO(io_oeb[14]));
 sky130_fd_sc_hd__conb_1 _0911_ (.LO(io_oeb[15]));
 sky130_fd_sc_hd__conb_1 _0912_ (.LO(io_oeb[16]));
 sky130_fd_sc_hd__conb_1 _0913_ (.LO(io_oeb[17]));
 sky130_fd_sc_hd__conb_1 _0914_ (.LO(io_oeb[18]));
 sky130_fd_sc_hd__conb_1 _0915_ (.LO(io_oeb[19]));
 sky130_fd_sc_hd__conb_1 _0916_ (.LO(io_oeb[20]));
 sky130_fd_sc_hd__conb_1 _0917_ (.LO(io_oeb[21]));
 sky130_fd_sc_hd__conb_1 _0918_ (.LO(io_oeb[22]));
 sky130_fd_sc_hd__conb_1 _0919_ (.LO(io_oeb[23]));
 sky130_fd_sc_hd__conb_1 _0920_ (.LO(io_oeb[24]));
 sky130_fd_sc_hd__conb_1 _0921_ (.LO(io_oeb[25]));
 sky130_fd_sc_hd__conb_1 _0922_ (.LO(io_oeb[26]));
 sky130_fd_sc_hd__conb_1 _0923_ (.LO(io_oeb[27]));
 sky130_fd_sc_hd__conb_1 _0924_ (.LO(io_oeb[28]));
 sky130_fd_sc_hd__conb_1 _0925_ (.LO(io_oeb[29]));
 sky130_fd_sc_hd__conb_1 _0926_ (.LO(io_out[30]));
 sky130_fd_sc_hd__conb_1 _0927_ (.LO(io_out[31]));
 sky130_fd_sc_hd__conb_1 _0928_ (.LO(io_out[32]));
 sky130_fd_sc_hd__conb_1 _0929_ (.LO(io_out[33]));
 sky130_fd_sc_hd__conb_1 _0930_ (.LO(io_out[34]));
 sky130_fd_sc_hd__conb_1 _0931_ (.LO(io_out[35]));
 sky130_fd_sc_hd__conb_1 _0932_ (.LO(io_out[36]));
 sky130_fd_sc_hd__conb_1 _0933_ (.LO(io_out[37]));
 sky130_fd_sc_hd__conb_1 _0934_ (.LO(la_oenb[16]));
 sky130_fd_sc_hd__conb_1 _0935_ (.LO(la_oenb[17]));
 sky130_fd_sc_hd__conb_1 _0936_ (.LO(la_oenb[18]));
 sky130_fd_sc_hd__conb_1 _0937_ (.LO(la_oenb[19]));
 sky130_fd_sc_hd__conb_1 _0938_ (.LO(la_oenb[20]));
 sky130_fd_sc_hd__conb_1 _0939_ (.LO(la_oenb[21]));
 sky130_fd_sc_hd__conb_1 _0940_ (.LO(la_oenb[22]));
 sky130_fd_sc_hd__conb_1 _0941_ (.LO(la_oenb[23]));
 sky130_fd_sc_hd__conb_1 _0942_ (.LO(la_oenb[24]));
 sky130_fd_sc_hd__conb_1 _0943_ (.LO(la_oenb[25]));
 sky130_fd_sc_hd__conb_1 _0944_ (.LO(la_oenb[26]));
 sky130_fd_sc_hd__conb_1 _0945_ (.LO(la_oenb[27]));
 sky130_fd_sc_hd__conb_1 _0946_ (.LO(la_oenb[28]));
 sky130_fd_sc_hd__conb_1 _0947_ (.LO(la_oenb[29]));
 sky130_fd_sc_hd__conb_1 _0948_ (.LO(la_oenb[30]));
 sky130_fd_sc_hd__conb_1 _0949_ (.LO(la_oenb[31]));
 sky130_fd_sc_hd__conb_1 _0950_ (.LO(la_oenb[32]));
 sky130_fd_sc_hd__conb_1 _0951_ (.LO(la_oenb[33]));
 sky130_fd_sc_hd__conb_1 _0952_ (.LO(la_oenb[34]));
 sky130_fd_sc_hd__conb_1 _0953_ (.LO(la_oenb[35]));
 sky130_fd_sc_hd__conb_1 _0954_ (.LO(la_oenb[36]));
 sky130_fd_sc_hd__conb_1 _0955_ (.LO(la_oenb[37]));
 sky130_fd_sc_hd__conb_1 _0956_ (.LO(la_oenb[38]));
 sky130_fd_sc_hd__conb_1 _0957_ (.LO(la_oenb[39]));
 sky130_fd_sc_hd__conb_1 _0958_ (.LO(la_oenb[40]));
 sky130_fd_sc_hd__conb_1 _0959_ (.LO(la_oenb[41]));
 sky130_fd_sc_hd__conb_1 _0960_ (.LO(la_oenb[42]));
 sky130_fd_sc_hd__conb_1 _0961_ (.LO(la_oenb[43]));
 sky130_fd_sc_hd__conb_1 _0962_ (.LO(la_oenb[44]));
 sky130_fd_sc_hd__conb_1 _0963_ (.LO(la_oenb[45]));
 sky130_fd_sc_hd__conb_1 _0964_ (.LO(la_oenb[46]));
 sky130_fd_sc_hd__conb_1 _0965_ (.LO(la_oenb[47]));
 sky130_fd_sc_hd__conb_1 _0966_ (.LO(la_oenb[48]));
 sky130_fd_sc_hd__conb_1 _0967_ (.LO(la_oenb[49]));
 sky130_fd_sc_hd__conb_1 _0968_ (.LO(la_oenb[50]));
 sky130_fd_sc_hd__conb_1 _0969_ (.LO(la_oenb[51]));
 sky130_fd_sc_hd__conb_1 _0970_ (.LO(la_oenb[52]));
 sky130_fd_sc_hd__conb_1 _0971_ (.LO(la_oenb[53]));
 sky130_fd_sc_hd__conb_1 _0972_ (.LO(la_oenb[54]));
 sky130_fd_sc_hd__conb_1 _0973_ (.LO(la_oenb[55]));
 sky130_fd_sc_hd__conb_1 _0974_ (.LO(la_oenb[56]));
 sky130_fd_sc_hd__conb_1 _0975_ (.LO(la_oenb[57]));
 sky130_fd_sc_hd__conb_1 _0976_ (.LO(la_oenb[58]));
 sky130_fd_sc_hd__conb_1 _0977_ (.LO(la_oenb[59]));
 sky130_fd_sc_hd__conb_1 _0978_ (.LO(la_oenb[60]));
 sky130_fd_sc_hd__conb_1 _0979_ (.LO(la_oenb[61]));
 sky130_fd_sc_hd__conb_1 _0980_ (.LO(la_oenb[62]));
 sky130_fd_sc_hd__conb_1 _0981_ (.LO(la_oenb[63]));
 sky130_fd_sc_hd__conb_1 _0982_ (.LO(la_oenb[64]));
 sky130_fd_sc_hd__conb_1 _0983_ (.LO(la_oenb[65]));
 sky130_fd_sc_hd__conb_1 _0984_ (.LO(la_oenb[66]));
 sky130_fd_sc_hd__conb_1 _0985_ (.LO(la_oenb[67]));
 sky130_fd_sc_hd__conb_1 _0986_ (.LO(la_oenb[68]));
 sky130_fd_sc_hd__conb_1 _0987_ (.LO(la_oenb[69]));
 sky130_fd_sc_hd__conb_1 _0988_ (.LO(la_oenb[70]));
 sky130_fd_sc_hd__conb_1 _0989_ (.LO(la_oenb[71]));
 sky130_fd_sc_hd__conb_1 _0990_ (.LO(la_oenb[72]));
 sky130_fd_sc_hd__conb_1 _0991_ (.LO(la_oenb[73]));
 sky130_fd_sc_hd__conb_1 _0992_ (.LO(la_oenb[74]));
 sky130_fd_sc_hd__conb_1 _0993_ (.LO(la_oenb[75]));
 sky130_fd_sc_hd__conb_1 _0994_ (.LO(la_oenb[76]));
 sky130_fd_sc_hd__conb_1 _0995_ (.LO(la_oenb[77]));
 sky130_fd_sc_hd__conb_1 _0996_ (.LO(la_oenb[78]));
 sky130_fd_sc_hd__conb_1 _0997_ (.LO(la_oenb[79]));
 sky130_fd_sc_hd__conb_1 _0998_ (.LO(la_oenb[80]));
 sky130_fd_sc_hd__conb_1 _0999_ (.LO(la_oenb[81]));
 sky130_fd_sc_hd__conb_1 _1000_ (.LO(la_oenb[82]));
 sky130_fd_sc_hd__conb_1 _1001_ (.LO(la_oenb[83]));
 sky130_fd_sc_hd__conb_1 _1002_ (.LO(la_oenb[84]));
 sky130_fd_sc_hd__conb_1 _1003_ (.LO(la_oenb[85]));
 sky130_fd_sc_hd__conb_1 _1004_ (.LO(la_oenb[86]));
 sky130_fd_sc_hd__conb_1 _1005_ (.LO(la_oenb[87]));
 sky130_fd_sc_hd__conb_1 _1006_ (.LO(la_oenb[88]));
 sky130_fd_sc_hd__conb_1 _1007_ (.LO(la_oenb[89]));
 sky130_fd_sc_hd__conb_1 _1008_ (.LO(la_oenb[90]));
 sky130_fd_sc_hd__conb_1 _1009_ (.LO(la_oenb[91]));
 sky130_fd_sc_hd__conb_1 _1010_ (.LO(la_oenb[92]));
 sky130_fd_sc_hd__conb_1 _1011_ (.LO(la_oenb[93]));
 sky130_fd_sc_hd__conb_1 _1012_ (.LO(la_oenb[94]));
 sky130_fd_sc_hd__conb_1 _1013_ (.LO(la_oenb[95]));
 sky130_fd_sc_hd__conb_1 _1014_ (.LO(la_oenb[96]));
 sky130_fd_sc_hd__conb_1 _1015_ (.LO(la_oenb[97]));
 sky130_fd_sc_hd__conb_1 _1016_ (.LO(la_oenb[98]));
 sky130_fd_sc_hd__conb_1 _1017_ (.LO(la_oenb[99]));
 sky130_fd_sc_hd__conb_1 _1018_ (.LO(la_oenb[100]));
 sky130_fd_sc_hd__conb_1 _1019_ (.LO(la_oenb[101]));
 sky130_fd_sc_hd__conb_1 _1020_ (.LO(la_oenb[102]));
 sky130_fd_sc_hd__conb_1 _1021_ (.LO(la_oenb[103]));
 sky130_fd_sc_hd__conb_1 _1022_ (.LO(la_oenb[104]));
 sky130_fd_sc_hd__conb_1 _1023_ (.LO(la_oenb[105]));
 sky130_fd_sc_hd__conb_1 _1024_ (.LO(la_oenb[106]));
 sky130_fd_sc_hd__conb_1 _1025_ (.LO(la_oenb[107]));
 sky130_fd_sc_hd__conb_1 _1026_ (.LO(la_oenb[108]));
 sky130_fd_sc_hd__conb_1 _1027_ (.LO(la_oenb[109]));
 sky130_fd_sc_hd__conb_1 _1028_ (.LO(la_oenb[110]));
 sky130_fd_sc_hd__conb_1 _1029_ (.LO(la_oenb[111]));
 sky130_fd_sc_hd__conb_1 _1030_ (.LO(la_oenb[112]));
 sky130_fd_sc_hd__conb_1 _1031_ (.LO(la_oenb[113]));
 sky130_fd_sc_hd__conb_1 _1032_ (.LO(la_oenb[114]));
 sky130_fd_sc_hd__conb_1 _1033_ (.LO(la_oenb[115]));
 sky130_fd_sc_hd__conb_1 _1034_ (.LO(la_oenb[116]));
 sky130_fd_sc_hd__conb_1 _1035_ (.LO(la_oenb[117]));
 sky130_fd_sc_hd__conb_1 _1036_ (.LO(la_oenb[118]));
 sky130_fd_sc_hd__conb_1 _1037_ (.LO(la_oenb[119]));
 sky130_fd_sc_hd__conb_1 _1038_ (.LO(la_oenb[120]));
 sky130_fd_sc_hd__conb_1 _1039_ (.LO(la_oenb[121]));
 sky130_fd_sc_hd__conb_1 _1040_ (.LO(la_oenb[122]));
 sky130_fd_sc_hd__conb_1 _1041_ (.LO(la_oenb[123]));
 sky130_fd_sc_hd__conb_1 _1042_ (.LO(la_oenb[124]));
 sky130_fd_sc_hd__conb_1 _1043_ (.LO(la_oenb[125]));
 sky130_fd_sc_hd__conb_1 _1044_ (.LO(la_oenb[126]));
 sky130_fd_sc_hd__conb_1 _1045_ (.LO(la_oenb[127]));
 sky130_fd_sc_hd__conb_1 _1046_ (.LO(user_irq[2]));
 sky130_fd_sc_hd__buf_2 _1047_ (.A(sample_rdy_w),
    .X(io_out[3]));
 sky130_fd_sc_hd__buf_2 _1048_ (.A(svm_done),
    .X(io_out[4]));
 sky130_fd_sc_hd__buf_2 _1049_ (.A(svm_error),
    .X(io_out[5]));
 sky130_fd_sc_hd__buf_2 _1050_ (.A(ram_ren_w),
    .X(io_out[29]));
 sky130_fd_sc_hd__buf_2 _1051_ (.A(sample_rdy_w),
    .X(user_irq[0]));
 sky130_fd_sc_hd__buf_2 _1052_ (.A(svm_done),
    .X(user_irq[1]));
 sky130_fd_sc_hd__dlclkp_1 u_icg (.CLK(wb_clk_i),
    .GATE(svm_clk_en),
    .GCLK(svm_gclk));
 svm_compute_core u_svm (.alpha_write_en(alpha_wr_en_r),
    .clk(svm_gclk),
    .done(svm_done),
    .error(svm_error),
    .kernel_ready(_0350_),
    .kernel_valid(svm_kernel_valid),
    .param_write_en(\reg_param_wr[19] ),
    .ram_ren(ram_ren_w),
    .rst_n(rst_n),
    .sample_rdy(sample_rdy_w),
    .start(\reg_control[0] ),
    .vbatt_ok(\reg_control[1] ),
    .vbatt_warn(\reg_control[2] ),
    .alpha_addr({\reg_alpha_wr[23] ,
    \reg_alpha_wr[22] ,
    \reg_alpha_wr[21] ,
    \reg_alpha_wr[20] ,
    \reg_alpha_wr[19] ,
    \reg_alpha_wr[18] ,
    \reg_alpha_wr[17] ,
    \reg_alpha_wr[16] }),
    .alpha_data({\reg_alpha_wr[15] ,
    \reg_alpha_wr[14] ,
    \reg_alpha_wr[13] ,
    \reg_alpha_wr[12] ,
    \reg_alpha_wr[11] ,
    \reg_alpha_wr[10] ,
    \reg_alpha_wr[9] ,
    \reg_alpha_wr[8] ,
    \reg_alpha_wr[7] ,
    \reg_alpha_wr[6] ,
    \reg_alpha_wr[5] ,
    \reg_alpha_wr[4] ,
    \reg_alpha_wr[3] ,
    \reg_alpha_wr[2] ,
    \reg_alpha_wr[1] ,
    \reg_alpha_wr[0] }),
    .c_reg({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8,
    _NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16}),
    .class_out({io_out[2],
    io_out[1],
    io_out[0]}),
    .class_scores_la({la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98],
    la_data_out[97],
    la_data_out[96],
    la_data_out[95],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64],
    la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .error_code({io_out[9],
    io_out[8],
    io_out[7],
    io_out[6]}),
    .gamma_reg({_NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32}),
    .kernel_out({\svm_kernel_out[15] ,
    \svm_kernel_out[14] ,
    \svm_kernel_out[13] ,
    \svm_kernel_out[12] ,
    \svm_kernel_out[11] ,
    \svm_kernel_out[10] ,
    \svm_kernel_out[9] ,
    \svm_kernel_out[8] ,
    \svm_kernel_out[7] ,
    \svm_kernel_out[6] ,
    \svm_kernel_out[5] ,
    \svm_kernel_out[4] ,
    \svm_kernel_out[3] ,
    \svm_kernel_out[2] ,
    \svm_kernel_out[1] ,
    \svm_kernel_out[0] }),
    .num_samples({\reg_num_samples[9] ,
    \reg_num_samples[8] ,
    \reg_num_samples[7] ,
    \reg_num_samples[6] ,
    \reg_num_samples[5] ,
    \reg_num_samples[4] ,
    \reg_num_samples[3] ,
    \reg_num_samples[2] ,
    \reg_num_samples[1] ,
    \reg_num_samples[0] }),
    .num_sv_per_class_flat({\reg_num_sv[4][7] ,
    \reg_num_sv[4][6] ,
    \reg_num_sv[4][5] ,
    \reg_num_sv[4][4] ,
    \reg_num_sv[4][3] ,
    \reg_num_sv[4][2] ,
    \reg_num_sv[4][1] ,
    \reg_num_sv[4][0] ,
    \reg_num_sv[3][7] ,
    \reg_num_sv[3][6] ,
    \reg_num_sv[3][5] ,
    \reg_num_sv[3][4] ,
    \reg_num_sv[3][3] ,
    \reg_num_sv[3][2] ,
    \reg_num_sv[3][1] ,
    \reg_num_sv[3][0] ,
    \reg_num_sv[2][7] ,
    \reg_num_sv[2][6] ,
    \reg_num_sv[2][5] ,
    \reg_num_sv[2][4] ,
    \reg_num_sv[2][3] ,
    \reg_num_sv[2][2] ,
    \reg_num_sv[2][1] ,
    \reg_num_sv[2][0] ,
    \reg_num_sv[1][7] ,
    \reg_num_sv[1][6] ,
    \reg_num_sv[1][5] ,
    \reg_num_sv[1][4] ,
    \reg_num_sv[1][3] ,
    \reg_num_sv[1][2] ,
    \reg_num_sv[1][1] ,
    \reg_num_sv[1][0] ,
    \reg_num_sv[0][7] ,
    \reg_num_sv[0][6] ,
    \reg_num_sv[0][5] ,
    \reg_num_sv[0][4] ,
    \reg_num_sv[0][3] ,
    \reg_num_sv[0][2] ,
    \reg_num_sv[0][1] ,
    \reg_num_sv[0][0] }),
    .param_addr({\reg_param_wr[18] ,
    \reg_param_wr[17] ,
    \reg_param_wr[16] }),
    .param_data({\reg_param_wr[15] ,
    \reg_param_wr[14] ,
    \reg_param_wr[13] ,
    \reg_param_wr[12] ,
    \reg_param_wr[11] ,
    \reg_param_wr[10] ,
    \reg_param_wr[9] ,
    \reg_param_wr[8] ,
    \reg_param_wr[7] ,
    \reg_param_wr[6] ,
    \reg_param_wr[5] ,
    \reg_param_wr[4] ,
    \reg_param_wr[3] ,
    \reg_param_wr[2] ,
    \reg_param_wr[1] ,
    \reg_param_wr[0] }),
    .ram_addr({io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10]}),
    .ram_rdata({la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}));
endmodule
