# 32-bit 5-Stage Pipelined RV32I RISC Processor

## Overview
Synthesizable Verilog RTL implementation and SystemVerilog verification environment for a 32-bit 5-stage pipelined RISC-V (RV32I base integer instruction set) core.

## Pipeline Architecture
- **IF (Instruction Fetch):** Program Counter (PC) generation and Instruction Memory access.
- **ID (Instruction Decode):** 32 general-purpose registers, immediate sign-extension, and hazard detection unit.
- **EX (Execute):** Arithmetic Logic Unit (ALU), branch target calculation, and operand forwarding unit.
- **MEM (Memory Access):** Data memory read/write access.
- **WB (Write Back):** Result selection and register file update.

## Hazard Mitigation
- Forwarding unit resolving EX-to-EX and MEM-to-EX data dependencies.
- Pipeline stall and branch flush logic on control hazards.
