;This is LAB 05 - Program 1 (Logical Operations and Bit Manipulation)

    
    AREA LogicalOpsDebugAlt, CODE, READONLY 
    ENTRY                                   
    EXPORT __main                           

__main
    LDR R2, =0xFF0000                       ; Load 0xFF0000 into R2
    LDR R1, =0xF0F0F0F0                     ; Load 0xF0F0F0F0 into R1
    LDR R0, =0x0F0F0F0F                     ; Load 0x0F0F0F0F into R0

    AND R3, R1, #0x00FF0000                 ; Mask R1 to extract specific bits
    ORR R2, R2, R3                          ; Combine the masked value with R2

    LSR R3, R2, #8                          ; Logical shift R2 right by 8 bits
    ORR R1, R3, #0x0000FF00                 ; Add a fixed mask
    ORR R0, R0, R1                          ; Final combine with R0

    AND R0, R0, #0xFFFFFF00                 ; Mask R0 to restrict bits

stop B stop                                  
    END                                     