# 8-bit Program Counter

This project implements an 8-bit Program Counter (PC) using Verilog HDL.

The Program Counter stores the address of the next instruction and updates
its value on every rising edge of the clock when the enable signal is active.

## Features
- 8-bit Program Counter
- Synchronous PC update
- Asynchronous reset
- Enable control
- Verilog testbench included

## Inputs
- `clk` - Clock signal
- `reset` - Reset signal
- `enable` - Enables PC update
- `next_pc` - Next program counter value

## Output
- `pc` - Current program counter value

## Tools
- Verilog HDL
- Icarus Verilog / ModelSim / Vivado

