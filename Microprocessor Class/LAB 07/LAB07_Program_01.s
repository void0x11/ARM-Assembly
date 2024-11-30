; This is LAB 07 - Program 2 (Floating-Point Addition Using Scaled Integers)

        AREA FloatingPointExample, CODE, READONLY
        EXPORT __main
        ENTRY

__main
        ; Simulating floating-point addition using scaled integers
        MOV     R0, #575             ; Simulate 5.75 as 575 (scaled by 100)
        MOV     R1, #325             ; Simulate 3.25 as 325 (scaled by 100)
        ADD     R2, R0, R1           ; Add the scaled values        
        B .

        END