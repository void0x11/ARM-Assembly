;This is LAB 04 - Program 4 (Combining Literal Pools, MOVW, and MOVT)

        AREA |.text|, CODE, READONLY     
        EXPORT main                       
        ENTRY                            
main
        ; Load constant 0xABCDEF12 into r2 using MOVW and MOVT
        MOVW r2, #0xDEF2                  
        MOVT r2, #0xABCD                 

        ; Load constant 0x12345678 into r3 using LDR and a literal pool
        LDR r3, =const_12345678          

        ; Load constant 0xFEDCBA98 into r4 using MOVW, MOVT, and LDR with literal pool
        MOVW r4, #0xBA98                 
        MOVT r4, #0xFEDC                  
        LDR r4, =const_FEDCBA98           
        B .                               

        ; Literal Pool for constants
const_12345678
        DCD 0x12345678                   

const_FEDCBA98
        DCD 0xFEDCBA98                   

        LTORG                              ; Place literal pool

        AREA |.data|, DATA, READWRITE     
        ALIGN 4                            
        END                                