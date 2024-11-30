;This is LAB 05 - Program 2 (Bit Reversal Using RBIT)
		
		AREA BitReversal, CODE, READONLY
        ENTRY
        EXPORT __main

__main
        LDR     R0, =0x12345678       ; Load value 0x12345678 into R0
        RBIT    R1, R0                ; Reverse bits of R0 and store in R1
        MOV     R2, #0x00FF00FF       ; Load mask 0x00FF00FF into R2
        AND     R2, R1, R2            ; Perform AND operation between R1 and the mask, result stored in R2

stop    B       stop

        END