;This is LAB 01 - Program 3 (Swapping Register Contents)


    AREA SwapRegisters, CODE, READONLY   
    ENTRY                                
    EXPORT __main                        

__main
    MOV R0, #0x12                        ; Load value 0x12 into register R0
    MOV R1, #0x34                        ; Load value 0x34 into register R1

    ; XOR-based swap without intermediate storage
	
    EOR R0, R0, R1                       ; R0 = R0 XOR R1
    EOR R1, R0, R1                       ; R1 = R0 XOR R1 (original R0)
    EOR R0, R0, R1                       ; R0 = R0 XOR R1 (original R1)

stop
    B stop                               
    END                                  
