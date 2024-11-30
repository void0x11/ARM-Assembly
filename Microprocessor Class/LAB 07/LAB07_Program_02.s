; LAB 07 - Floating-Point Multiplication Using FMUL

        AREA FMULExample, CODE, READONLY
        EXPORT __main
        ENTRY

__main
        ; Enable the FPU
        LDR R0, =0xE000ED88           ; Address of CPACR register
        LDR R1, [R0]                  ; Read CPACR
        ORR R1, R1, #(0xF << 20)      ; Enable CP10 and CP11
        STR R1, [R0]                  ; Write back to CPACR
        DSB                           
        ISB                          

        VMOV.F32 S0, #2.5             ; Load 2.5 into S0
        VMOV.F32 S1, #4.0             ; Load 4.0 into S1

        VMUL.F32 S2, S0, S1           ; S2 = S0 * S1

        VMOV R2, S2                   ; Move result from S2 to R2 (integer representation)

        B .                           

        END