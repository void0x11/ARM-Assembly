; This is LAB 02 - Program 4 (Subroutines and Parameter Passing)

        AREA |.text|, CODE, READONLY      
        EXPORT main                       
        ENTRY                             

main
        LDR r0, =5                        
        BL factorial                      
        LDR r2, =result                   
        STR r1, [r2]                      
        B .                               

factorial
        CMP r0, #1                        
        BEQ return_one                   ; If r0 == 1, return 1
        PUSH {r0, lr}                     ; Save r0 and the return address (lr) onto the stack
        SUB r0, r0, #1                    ; Decrement r0 by 1
        BL factorial                      ; Recursively call factorial(r0 - 1)
        POP {r0, lr}                      
        MUL r1, r0, r1                    ; Multiply r0 by the result from the recursive call
        BX lr                             

return_one
        MOV r1, #1                        ; Set r1 to 1 (factorial(1) = 1)
        BX lr                             

        AREA |.data|, DATA, READWRITE     
result  DCD 0                             

        END                               