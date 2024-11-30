;This is LAB 03 - Program 2 (Access and handle unaligned memory locations)

        AREA |.text|, CODE, READONLY      
        EXPORT main                       
        ENTRY                             

main
        LDR r0, =unaligned_data            
        LDRH r3, [r0]                   
        LDRH r4, [r0, #2]                 
        ADD r5, r3, r4                   

        LDR r1, =unaligned_result          
        STRH r5, [r1]                     ; Store the 16-bit result back to the unaligned memory location

        B .                               

        AREA |.data|, DATA, READWRITE      
unaligned_data
        DCB 0x12, 0x34                    ; First 16-bit value (0x3412 in little-endian)
        DCB 0x56, 0x78                    ; Second 16-bit value (0x7856 in little-endian)
unaligned_result
        DCB 0x00, 0x00                    ; Reserve unaligned memory for the result

        ALIGN 4                            ; Ensure subsequent sections are aligned
        END                                