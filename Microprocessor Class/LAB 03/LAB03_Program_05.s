;This is LAB 03 - Program 5 (Advanced Memory Alignment and Unaligned Access)

        AREA |.text|, CODE, READONLY      
        EXPORT main                       
        ENTRY                             

main
        LDR r0, =unaligned_data           
        
        ; Manually load each 32-bit word (handling unaligned memory)
        LDRB r1, [r0]                      
        LDRB r2, [r0, #1]                
        LDRB r3, [r0, #2]                 
        LDRB r4, [r0, #3]                 
        
        ORR r0, r1, r2, LSL #8           
        ORR r0, r0, r3, LSL #16         
        ORR r0, r0, r4, LSL #24          
        
        LDRB r1, [r0, #4]               
        LDRB r2, [r0, #5]               
        LDRB r3, [r0, #6]               
        LDRB r4, [r0, #7]              
        
        ORR r1, r1, r2, LSL #8          
        ORR r1, r1, r3, LSL #16          
        ORR r1, r1, r4, LSL #24           
        
        ADD r2, r0, r1                   

        LDR r3, =result                   
        STR r2, [r3]                    

        B .                             

        AREA |.data|, DATA, READWRITE      
unaligned_data
        DCB 0x00                           
        DCB 0x01, 0x00, 0x02, 0x00        ; First 16-bit value: 1, 2
        DCB 0x03, 0x00, 0x04, 0x00        ; Next 16-bit value: 3, 4
        DCB 0x05, 0x00, 0x06, 0x00        ; Last 16-bit value: 5, 6
result
        DCD 0x00                          

        ALIGN 4                             
        END                                 