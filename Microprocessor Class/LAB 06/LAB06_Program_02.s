;This is LAB 06 - Program 2 (Data Saturation Using SSAT)
        
        AREA SSATExample, CODE, READONLY  
        EXPORT __main                     
        ENTRY                             

__main
        ; Test case 1: Value above 16-bit maximum
        LDR r3, =0x00030000               
        SSAT r4, #16, r3                  ; Saturate r3 to 16-bit signed range, result in r4

        ; Test case 2: Value within 16-bit range
        LDR r3, =0x00007FFF               
        SSAT r4, #16, r3                  ; Saturate r3 to 16-bit signed range, result in r4

        ; Test case 3: Negative value
        LDR r3, =0xFFFF8000               
        SSAT r4, #16, r3                  ; Saturate r3 to 16-bit signed range, result in r4

        B .

        END                               