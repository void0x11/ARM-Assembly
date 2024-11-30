;This is LAB 06 - Program 1 (Sum of Two Array Elements)
        
        AREA RESET, CODE, READONLY    
        EXPORT Reset_Handler          
        EXPORT main                   
        ENTRY                         

main
        B Reset_Handler               ; Redirect main to Reset_Handler

Reset_Handler
        LDR r0, =array                ; Load the address of the array into r0
        MOV r1, #0                    ; Initialize sum accumulator (r1) to 0
        MOV r3, #5                    ; Set loop counter (number of elements)

loop    LDR r4, [r0], #4              ; Load value from address in r0 into r4, increment r0 by 4
        ADD r1, r1, r4                ; Add value in r4 to accumulator
        SUBS r3, r3, #1               ; Decrement loop counter and set flags
        BNE loop                      ; Branch if r3 != 0

        MOV r2, r1                    ; Store the sum in r2 (final result)
        B .                           ; Infinite loop to stop execution

        AREA DATA, DATA, READWRITE    
array   DCD 10, 20, 30, 40, 50        ; Define array in memory

        END                           