
# ARM Assembly Fundamentals

Welcome to the ARM Assembly Fundamentals repository. This project serves as a comprehensive learning resource for ARM Assembly programming, specifically tailored for students and engineers interested in understanding microprocessor-level programming. The repository includes a variety of labs, exercises, and examples that progressively build on fundamental concepts of ARM assembly language and microprocessor architectures.

## Overview

ARM Assembly is the foundation of programming for ARM-based processors, which are widely used in embedded systems, mobile devices, and various IoT applications. This repository covers the essentials of ARM assembly language programming, including how to manage constants, handle registers, and utilize advanced features like MOVW, MOVT, and literal pools.

### Key Concepts Covered:
- ARM Instruction Set Architecture (ISA)
- Data Types and Register Management
- Loading Constants and Working with Immediate Values
- Literal Pools and their Use in ARM Assembly
- ARM’s Rotation Scheme and Efficient Constant Encoding
- Understanding ARM Processor Modes (ARM and Thumb)
- Memory Access Techniques and Efficiency

## Labs & Exercises

The repository is structured into a series of hands-on labs, each focused on specific ARM Assembly topics. Below are some key labs and their objectives:

### Lab 1: **Basic Constant Loading with MOV and MVN**
- **Objective**: Learn how to load small constants into ARM registers using the MOV and MVN instructions. This lab helps understand how MOV loads a value directly into a register and how MVN loads the bitwise inverse (complement) of a constant.
  
### Lab 2: **Encoding Constants with the ARM Rotation Scheme**
- **Objective**: Practice using ARM’s rotation encoding to load large constants into registers. This lab demonstrates the flexibility and limitations of ARM’s instruction set in handling 32-bit constants using MOVW and MOVT.
  
### Lab 3: **Loading Constants with MOVW and MOVT**
- **Objective**: Learn how to load a 32-bit constant into a register by splitting it between MOVW (to load the lower 16 bits) and MOVT (to load the upper 16 bits). This lab is essential for working with constants that are too large to fit in a single instruction.

### Lab 4: **Combining Literal Pools, MOVW, and MOVT**
- **Objective**: Combine MOVW, MOVT, and literal pools to handle multiple large constants and addresses. This lab introduces the use of LDR with literal pools and helps manage memory efficiently by controlling literal pool placement using the LTORG directive.
  
## Requirements

Before running the programs and exercises in this repository, ensure that you have the following tools and hardware:

- **Assembler/IDE**: ARM development tools like Keil, ARM's RealView, or GCC for ARM
- **Hardware**: An ARM-based microcontroller or emulator (e.g., Raspberry Pi or ARM-based development boards)
- **Understanding**: Familiarity with basic microprocessor concepts and assembly language fundamentals

## Getting Started

1. **Clone the Repository**:
   Clone the repository to your local machine using:
   ```bash
   git clone https://github.com/void0x11/ARM-Assembly-Fundamentals.git

2. **Choose Your Environment**:

You can use any ARM-compatible toolchain like Keil or GCC for compiling and running the ARM assembly code.
For simulation purposes, consider using tools like QEMU or ARM emulators to test the code without hardware.

3. **Running Labs**:

Navigate to the lab directories (e.g., Lab 1, Lab 2) and follow the instructions in each respective folder to compile and execute the examples.
For each lab, you will typically need to assemble and link the ARM assembly file, load it onto the device or simulator, and observe the results.
Observing Outputs:

Use a debugger or simulator to inspect the register values, memory, and any other pertinent details for each exercise.
If using real hardware, ensure that the output is routed to a suitable display, serial interface, or debugging tool.

## Technologies and Tools
Microcontroller: STM32F411 (ARM Cortex-M4 architecture)
IDE: Keil uVision
Programming Languages: C, ARM Assembly
Debugger: ST-Link/V2
Hardware Components: STM32F411 Development Board, LEDs, Sensors