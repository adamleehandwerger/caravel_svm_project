# 5-Class Cardiac Arrhythmia Classifier — RBF-SVM ASIC

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

**Author:** Adam Handwerger · Portland State University · ECE 410  
**Technology:** sky130A (SkyWater 130 nm open-PDK), sky130_fd_sc_hd  
**Flow:** OpenLane 2 v2.3.10 Classic (Yosys + OpenROAD + TritonRoute)  
**Architecture:** Batch v9 — host pre-loads SV + input matrix; ASIC classifies autonomously

---

## Key Results (OL2 jobs 91966 / 91967, nom_tt_025C_1v80)

| Metric | Value |
|--------|-------|
| Clock | 40 MHz (25 ns), **TT CLEAN — 0 violations** |
| Setup WNS | +7.83 ns |
| Hold WNS | +0.30 ns |
| Active power | 66 mW → **0.284 mW avg** at 80 bpm (0.431% duty cycle) |
| 14-day battery | 108 days headroom from SVM core alone (200 mAh @ 3.7V) |
| Cells | ~146K standard cells |
| Die (core) | 2500 × 2500 µm, ~14% utilization |
| Die (wrapper) | 2920 × 3520 µm |
| DRC | **0 violations** (core); boundary artifacts only (wrapper) |
| ASIC accuracy | **97.67%** (293/300) = sklearn, zero gap |

GDS files are hosted as [GitHub Release v2.0-hardened](https://github.com/adamleehandwerger/caravel_svm_project/releases/tag/v2.0-hardened) assets (226 MB core / 230 MB wrapper).

---

## Architecture

**5-class OvR SVM accelerator** classifying cardiac arrhythmias in real-time from 256-dimensional ECG features:

| Class | Label | Arrhythmia |
|-------|-------|------------|
| 0 | N | Normal |
| 1 | PVC | Premature Ventricular Contraction |
| 2 | AFib | Atrial Fibrillation |
| 3 | VT | Ventricular Tachycardia |
| 4 | SVT | Supraventricular Tachycardia |

**Feature extraction (256-dim multi-scale):**

| Group | Dims |
|-------|------|
| Single-beat morphology (±64 samples) | 128 |
| 10-beat mean template | 64 |
| RR-interval history (99 intervals → 64 pts) | 64 |

**Fixed-point:** Q6.10, 16-bit signed. **Gamma:** γ=0.25 (exact 0x0100, zero quantization error).

**Dataset:** PhysioNet MIT-BIH + SVDB + INCART. **Standard:** AAMI ANSI EC57:2012.

---

## Caravel Wishbone Memory Map (base `0x3000_0000`)

| Offset | Name | R/W | Description |
|--------|------|-----|-------------|
| +0x04 | CONTROL | RW | [0]=start [1]=vbatt_ok [2]=vbatt_warn |
| +0x08 | STATUS | RO | [0]=done [1]=error [5:2]=error_code [8:6]=class [9]=sample_rdy |
| +0x0C | NUM_SAMPLES | RW | [9:0] beats in batch (1–1000) |
| +0x10–+0x20 | NUM_SV[0–4] | RW | [7:0] SVs per class (max 100 each) |
| +0x24 | PARAM_WR | WO | [19]=en [18:16]=addr [15:0]=data (γ, C, bias) |
| +0x28 | ALPHA_WR | WO | [24:16]=sv_global_idx (9-bit) [15:0]=alpha Q6.10 |

---

## Off-chip RAM Protocol

| Rows | Content | Size |
|------|---------|------|
| 0 – 499 | SV matrix (500 × 256 × Q6.10) | 256 KB |
| 500 – 1499 | Input matrix (1000 × 256 × Q6.10) | 512 KB |

Address bus: `GPIO[28:10]` = `ram_addr[18:0]`, `GPIO[29]` = `ram_ren`, `LA[15:0]` = `ram_rdata` (1-cycle latency).

---

## Repository Structure

```
caravel_svm_project/
├── info.yaml                          ← Efabless manifest (mpw-precheck)
├── gds/
│   ├── svm_compute_core.gds           ← core GDS (LFS pointer; see Release v2.0-hardened)
│   └── user_project_wrapper.gds       ← wrapper GDS (LFS pointer; see Release v2.0-hardened)
├── lef/
│   ├── svm_compute_core.lef           ← core abstract (94 KB)
│   └── user_project_wrapper.lef       ← wrapper abstract
├── verilog/
│   ├── rtl/
│   │   ├── svm_compute_core.sv        ← SVM accelerator RTL (v9, NUM_SV=500)
│   │   ├── user_project_wrapper.sv    ← Caravel wrapper RTL
│   │   ├── defines.v                  ← Caravel global defines
│   │   ├── uprj_netlists.v            ← netlist includes
│   │   ├── user_defines.v             ← GPIO direction defines
│   │   └── sim_sram_models.sv         ← off-chip SRAM behavioral model
│   ├── gl/
│   │   ├── svm_compute_core.v         ← gate-level netlist (job 91966, 13 MB)
│   │   └── user_project_wrapper.v     ← gate-level netlist (job 91967)
│   └── dv/
│       ├── svm_wb_test/               ← RTL/C testbench (Wishbone register readback)
│       └── cocotb/
│           └── user_proj_tests/
│               └── svm_wb_test/       ← cocotb smoke test
├── signoff/
│   ├── caravel/                       ← Caravel STA sign-off
│   └── user_project_wrapper/          ← wrapper sign-off reports
├── openlane/
│   └── user_project_wrapper/          ← OL2 P&R config for wrapper
└── spef/ def/ sdc/ lib/ lef/ mag/ maglef/ spi/
    └── user_project_wrapper.*         ← wrapper parasitic / timing / layout artifacts
```

---

## Acknowledgments

Hardening performed on **Orca**, Portland State University's HPC cluster,
using SLURM batch jobs with OpenLane 2 v2.3.10 inside a Singularity container.
Thanks to the PSU Research Computing team.

---

*v9 · 2026-05-25 — svm_compute_core (job 91966) + user_project_wrapper (job 91967) hardened*
