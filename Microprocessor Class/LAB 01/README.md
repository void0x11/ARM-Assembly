# Program 1: Shifting Data

## Objective
This program demonstrates how to perform bitwise shifts in ARM Assembly using the **Logical Shift Left (LSL)** instruction. It manipulates an initial value stored in a register and halts after the operations are completed.

---

## How It Works

### Program Overview
1. Declares a read-only program area using the `AREA` directive.
2. Loads an initial hexadecimal value (`0x11`) into a general-purpose register (`R0`) using the `MOV` instruction.
3. Performs two **left shifts** on the value in `R0`:
   - First, shifts the value by 1 bit.
   - Then, shifts the result by 2 additional bits.
4. Halts the program by branching to a `stop` label.

---

