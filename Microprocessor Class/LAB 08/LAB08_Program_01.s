; Lab 08: Floating-Point Rounding Modes

        AREA RoundingModes, CODE, READONLY
        EXPORT __main
        ENTRY

__main
        LDR r0, =0xE000ED88      
        LDR r1, [r0]
        ORR r1, r1, #(0xF << 20) ; Set CP10 and CP11 for full access to FPU
        STR r1, [r0]
        ISB                      

        VLDR.F32 s0, =5.75       ; Load 5.75 into S0
        VLDR.F32 s1, =0.125      ; Load 0.125 into S1

        ; Perform addition under default rounding mode (Round to Nearest)
        VADD.F32 s2, s0, s1      ; S2 = S0 + S1
        VMOV r2, s2              

        ; Modify FPSCR for Round Toward Zero
        VMRS r3, FPSCR           
        ORR r3, r3, #(0x0C << 22)
        VMSR FPSCR, r3           
        VADD.F32 s2, s0, s1      ; S2 = S0 + S1 (Round Toward Zero)
        VMOV r3, s2              
		
        ; Modify FPSCR for Round Toward Positive Infinity
        VMRS r4, FPSCR           
        ORR r4, r4, #(0x08 << 22)
        VMSR FPSCR, r4           
        VADD.F32 s2, s0, s1      ; S2 = S0 + S1 (Round Toward Positive Infinity)
        VMOV r4, s2              

        ; Modify FPSCR for Round Toward Negative Infinity
        VMRS r5, FPSCR           
        ORR r5, r5, #(0x04 << 22)
        VMSR FPSCR, r5           
        VADD.F32 s2, s0, s1      ; S2 = S0 + S1 (Round Toward Negative Infinity)
        VMOV r5, s2              

        B .                      

        END