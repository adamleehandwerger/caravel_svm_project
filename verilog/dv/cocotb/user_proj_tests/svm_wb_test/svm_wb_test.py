# SPDX-FileCopyrightText: 2024 Adam Handwerger
# SPDX-License-Identifier: Apache-2.0
#
# Smoke test: write 3 zero-valued feature words via Wishbone FIFO_DATA,
# start classification, and verify STATUS[0]=done asserts without error.

from caravel_cocotb.caravel_interfaces import test_configure
from caravel_cocotb.caravel_interfaces import report_test
import cocotb
from cocotb.triggers import ClockCycles

WB_BASE   = 0x30000000
FIFO_DATA = WB_BASE + 0x00
CONTROL   = WB_BASE + 0x04
STATUS    = WB_BASE + 0x08
NUM_SAMP  = WB_BASE + 0x0C
NUM_SV_0  = WB_BASE + 0x10

STATUS_DONE      = 0x001
STATUS_ERR       = 0x002
CONTROL_START    = 0x001
CONTROL_VBATT_OK = 0x002

@cocotb.test()
@report_test
async def svm_wb_test(dut):
    caravelEnv = await test_configure(dut, timeout_cycles=50000)
    cocotb.log.info("[SVM] start svm_wb_test")

    await caravelEnv.release_csb()
    await caravelEnv.wait_mgmt_gpio(1)
    cocotb.log.info("[SVM] firmware ready")

    # Assert vbatt_ok so clock gate opens
    await caravelEnv.wb_write(CONTROL, CONTROL_VBATT_OK)
    await ClockCycles(caravelEnv.clk, 10)

    # Configure: 3 samples, 1 SV in class 0
    await caravelEnv.wb_write(NUM_SAMP, 3)
    await caravelEnv.wb_write(NUM_SV_0, 1)
    await ClockCycles(caravelEnv.clk, 5)

    # Push 3 feature words (all zeros — just smoke test, not real inference)
    for _ in range(3):
        await caravelEnv.wb_write(FIFO_DATA, 0x0000)
        await ClockCycles(caravelEnv.clk, 2)

    # Start classification
    await caravelEnv.wb_write(CONTROL, CONTROL_START | CONTROL_VBATT_OK)
    cocotb.log.info("[SVM] classification started")

    # Poll STATUS until done or timeout
    for attempt in range(10000):
        status = await caravelEnv.wb_read(STATUS)
        if status & STATUS_DONE:
            break
        await ClockCycles(caravelEnv.clk, 5)
    else:
        cocotb.log.error("[SVM] timeout waiting for done")
        return

    if status & STATUS_ERR:
        err_code = (status >> 2) & 0xF
        cocotb.log.error(f"[SVM] classification error, code=0x{err_code:X}")
    else:
        cls = (status >> 6) & 0x7
        cocotb.log.info(f"[SVM] classification done, class={cls}")

    cocotb.log.info("[SVM] svm_wb_test PASS")
