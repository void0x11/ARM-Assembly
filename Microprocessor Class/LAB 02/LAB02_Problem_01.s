; This is LAB 02 - Program 1 (Simple Data Movement and Arithmetic Operations)
        
        AREA |.text|, CODE, READONLY  
        EXPORT main                  
        ENTRY                        

main
        LDR r0, =4                   
        LDR r1, =7                   
        ADD r2, r0, r1               ; r2 = r0 + r1
        SUB r3, r1, r0               ; r3 = r1 - r0
        MUL r4, r0, r1               ; r4 = r0 * r1

        B .                          
        END                          