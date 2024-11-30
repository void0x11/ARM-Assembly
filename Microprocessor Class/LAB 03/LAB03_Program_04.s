;This is LAB 03 - Program 4 (Post-Indexed Addressing with Unaligned Access)

        AREA |.text|, CODE, READONLY     
        EXPORT main                     
        ENTRY                          

main
        LDR r0, =unaligned_array           
        LDRH r4, [r0], #2                
        LDRH r5, [r0], #2               
        LDRH r6, [r0], #2                
        LDRH r7, [r0], #2               
        LDRH r8, [r0], #2              
        LDRH r9, [r0], #2                

        ; Add the values
        ADD r10, r4, r5                  
        ADD r10, r10, r6                 
        ADD r10, r10, r7                
        ADD r10, r10, r8                 
        ADD r10, r10, r9                 

        ; Store the result back in memory
        LDR r1, =result                   
        STR r10, [r1]                   
        B .                             

        AREA |.data|, DATA, READWRITE     
unaligned_array
        DCD 1, 2, 3, 4, 5, 6              ; Reserve 6 16-bit values in little-endian format
result
        DCD 0x00                          

        ALIGN 4                            
        END                                