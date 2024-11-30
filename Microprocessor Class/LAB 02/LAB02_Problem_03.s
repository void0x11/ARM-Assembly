; This is LAB 02 - Program 3 (Memory Access and Addressing)

        AREA |.text|, CODE, READONLY     
        EXPORT main                      
        ENTRY                            

main
        LDR r0, =first_integer           
        LDR r0, [r0]                    
        LDR r1, =second_integer          
        LDR r1, [r1]                    
        ADD r2, r0, r1                  
        LDR r3, =result                  ; Load the address of the result variable into r3
        STR r2, [r3]                    
        B .                             

        AREA |.data|, DATA, READWRITE   
first_integer  DCD 10                   ; Reserve memory for the first integer, initialize to 10
second_integer DCD 20                  
result          DCD 0                   

        END                              