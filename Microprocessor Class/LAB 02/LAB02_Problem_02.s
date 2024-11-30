; This is LAB 02 - Program 2 (Conditional Execution and Looping)

        AREA |.text|, CODE, READONLY  
        EXPORT main                  
        ENTRY                        

main
        LDR r0, =0                   
        LDR r1, =10                  

loop
        CMP r0, r1                   ; Compare r0 with r1
        BEQ exit                     ; If r0 == r1, exit the loop
        ADD r0, r0, #1               ; Increment r0 by 1
        B loop                       

exit
        B .                          

        END                          