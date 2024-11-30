;This is LAB 01 - Program 3 (Moving Values Between Integer and Floating-Point Registers)


    AREA MoveRegisters, CODE, READONLY   
    ENTRY                                
    EXPORT __main                        

__main
    ; Step 1: Enable the Floating-Point Unit (FPU)
    LDR R0, =0xE000ED88                 
    LDR R1, [R0]                        ; Load the current value of CPACR
    ORR R1, R1, #(0xF << 20)            ; Enable full access to the FPU by setting bits 20-23
    STR R1, [R0]                        

    ; Step 2: Synchronize pipeline after enabling FPU
    DSB                                 
    ISB                                 

    ; Step 3: Load values into integer and floating-point registers
    MOV R0, #10                         
    VMOV.F32 S0, R0                     ; Move the value from R0 to floating-point register S0

    VLDR.F32 S1, =3.14                  ; Load a floating-point value (3.14) into S1

    ; Step 4: Move values back and observe register states
    VMOV R2, S1                         ; Move the value from floating-point register S1 to R2

stop
    B stop                              
    END                                 