;This is LAB 04 - Program 2 (Encoding Constants with the ARM Rotation Scheme)

        AREA |.text|, CODE, READONLY     
        EXPORT main                      
        ENTRY                             

main
        ; Load constant 0xFF00 into r0 using rotation
        MOV r0, #0xFF                      
        MOV r0, r0, LSL #8                 ; Rotate left by 8 bits to get 0xFF00 in r0

        ; Load constant 0x00FF0000 into r1 using rotation
        MOV r1, #0xFF                     
        MOV r1, r1, LSL #16                ; Rotate left by 16 bits to get 0x00FF0000 in r1

        ; Load constant 0xF000F000 into r2 using rotation (direct encoding)
        MOV r2, #0xF000                    
        MOV r2, r2, ROR #16                ; Rotate right by 16 bits to get 0xF000F000 in r2

        B .                             

        AREA |.data|, DATA, READWRITE      
        ALIGN 4                            
        END                                