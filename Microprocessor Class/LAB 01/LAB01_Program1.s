;This is LAB 01 - Program 1

    AREA ShiftingData, CODE, READONLY    ; Declare a code section named "ShiftingData"
    
    ENTRY                                ; Mark the program entry point
	EXPORT __main
		
__main
        MOV R0, #0x11                   ; Load the value 0x11 (17 decimal) into register R0     
		LSL R0, R0, #1                  ; (R0 = R0 << 1)
		LSL R0, R0, #2					; (R0 = R0 << 2)
    
stop
    B stop                               ; Branch to the stop label (infinite loop to halt program execution)
    END                                  ; End of program