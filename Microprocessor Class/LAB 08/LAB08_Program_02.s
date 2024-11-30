; Lab 08: Floating-Point Exception Handling

        AREA FloatingPointExceptions, CODE, READONLY
        EXPORT __main
        ENTRY

__main
        ; Initialize FPU
        LDR R0, =0xE000ED88          
        LDR R1, [R0]
        ORR R1, R1, #(0xF << 20)     
        STR R1, [R0]

        NOP                          

        LDR R0, =LargeValue          
        VLDR.F32 S0, [R0]            
        VLDR.F32 S1, [R0]            

        ; Perform Floating-point addition (Overflow)
        VADD.F32 S2, S0, S1          ; S2 = S0 + S1
        VMRS R2, FPSCR               

        ; Test invalid operation (0.0 / 0.0)
        LDR R1, =ZeroValue           
        VLDR.F32 S3, [R1]            
        VDIV.F32 S4, S3, S3          ; S4 = S3 / S3
        VMRS R3, FPSCR               

        B .

        AREA DataSection, DATA, READWRITE
LargeValue DCD 0x7F7FFFFF            ; 1.0e38 in IEEE 754 format
ZeroValue  DCD 0x00000000            ; 0.0 in IEEE 754 format

        END
