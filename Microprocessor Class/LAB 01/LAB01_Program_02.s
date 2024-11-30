;This is LAB 01 - Program 2 (Factorial Calculation)

    
    AREA FactorialCalc, CODE, READONLY    
    ENTRY                                
    EXPORT __main                        

__main
    MOV R0, #6                           ; Load the initial value n (6) into R0
    MOV R1, #1                           ; Initialize R1 as 1 (factorial accumulator)
    BL factorial                         ; Call the factorial function
    B stop                               

factorial
    CMP R0, #0                           ; Compare n (R0) with 0
    BEQ base_case                        ; If n == 0, branch to base case
    PUSH {R0, LR}                        ; Save R0 (current n) and return address (LR)
    SUB R0, R0, #1                       ; Decrement n by 1
    BL factorial                         ; Recursively call factorial(n-1)
    POP {R0, LR}                         ; Restore R0 (current n) and return address
    MUL R1, R1, R0                       ; Multiply result by current n (R0)
    BX LR                                

base_case
    MOV R1, #1                           ; Base case: factorial(0) = 1
    BX LR                               

stop
    B stop                               
    END                                  