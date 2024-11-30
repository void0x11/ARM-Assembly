;This is LAB 04 - Program 3 (Loading Constants with MOVW and MOVT)

        AREA |.text|, CODE, READONLY       
        EXPORT main                       
        ENTRY                              

main
        MOVW r1, #0xFACE                   ; Load the lower 16 bits of 0xBEEFFACE (0xFACE) into r1
        MOVT r1, #0xBEEF                   ; Load the upper 16 bits of 0xBEEFFACE (0xBEEF) into r1

        B .                                

        AREA |.data|, DATA, READWRITE     
        ALIGN 4                            
        END                                 