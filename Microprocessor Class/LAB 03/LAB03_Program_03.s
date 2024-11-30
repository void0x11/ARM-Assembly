;This is LAB 03 - Program 3 (Pre-Indexed Addressing with Unaligned Data)

        AREA |.text|, CODE, READONLY      
        EXPORT main                     
        ENTRY                             

main
        LDR r0, =unaligned_array          
        LDR r1, [r0], #4                 
        LDR r2, [r0], #4                
        LDR r3, [r0], #4                 
        LDR r4, [r0], #4                 
        LDR r5, [r0]                      

        ; Add the values pairwise
        ADD r6, r1, r2                    ; r6 = r1 + r2
        ADD r7, r3, r4                    ; r7 = r3 + r4

        ; Store the results in new memory locations
        LDR r0, =result_array            
        STR r6, [r0], #4                 
        STR r7, [r0], #4                  
        STR r5, [r0]                      

        B .                               

        AREA |.data|, DATA, READWRITE      
unaligned_array
        DCB 0x00                          ; Misalign the starting address
        DCD 1, 2, 3, 4, 5                 ; Reserve memory for the array (unaligned by 1 byte)
result_array
        DCB 0x00, 0x00, 0x00, 0x00        ; Reserve memory for three 32-bit results

        ALIGN 4                            
        END                                