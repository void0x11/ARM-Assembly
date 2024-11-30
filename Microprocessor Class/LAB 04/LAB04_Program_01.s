;This is LAB 04 - Program 1 (Basic Constant Loading with MOV and MVN)

        AREA |.text|, CODE, READONLY     
        EXPORT main                       
        ENTRY                            

main
        ; Load constant 0xFF into r0 using MOV
        MOV r0, #0xFF                     
        MOV r1, r0                         

        ; Load complement of 0xFF (0x00) into r2 using MVN
        MVN r2, #0xFF                    

        ; Load constant 0xAA into r0 using MOV
        MOV r0, #0xAA                     
        MOV r3, r0                        

        ; Load complement of 0xAA (0x55) into r4 using MVN
        MVN r4, #0xAA                      

        ; Load constant 0x00 into r0 using MOV
        MOV r0, #0x00                    
        MOV r5, r0                       

        ; Load complement of 0x00 (0xFF) into r6 using MVN
        MVN r6, #0x00                     

        B .                              

        AREA |.data|, DATA, READWRITE     
        ALIGN 4                            
        END                                