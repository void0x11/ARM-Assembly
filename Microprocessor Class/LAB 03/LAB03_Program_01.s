;This is LAB 03 - Program 1 (Simple Memory Access with Alignment)

        AREA |.text|, CODE, READONLY     
        EXPORT main                      
        ENTRY                            

main
        LDR r0, =int1                      ; Load the address of the first integer into r0
        LDR r0, [r0]                    
        LDR r1, =int2                     
        LDR r1, [r1]                     
        ADD r2, r0, r1                 
        LDR r3, =result                  
        STR r2, [r3]                     

        B .                              

        AREA |.data|, DATA, READWRITE      ; Define a data section
int1    DCD 12                             
int2    DCD 8                             
int3    DCD 0                             
int4    DCD 0                             
result  DCD 0                             

        ALIGN 4                            
        END                                
