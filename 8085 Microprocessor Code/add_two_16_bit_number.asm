; Write a program to add two 16 bit numbers, 1234H and ABCDH, which are stored in BC and DE register pairs respectively. Store the sum and carry in consecutive memory location starting from 9700H.

; Initial contents of register pairs (B, C) and (D, E)
        LXI B, 1234H      ; Load the immediate value 1234H to the register pair (B, C)
        LXI D, ABCDH      ; Load the immediate value ABCDH to the register pair (D, E)

; Storing sum and carry
        MOV A, C          ; Move the content of register C to the accumulator (A) {A = 34H}
        ADD E             ; Add the value in register E to the accumulator (A)
        MOV L, A          ; Move the content of the accumulator (A) to register L {L = 01H}
        MOV A, B          ; Move the content of register B to the accumulator (A) {A = 12H}
        ADC D             ; Add D (ABH) and carry (1) to A (01H) {A = ADH}
        MOV H, A          ; Move the content of the accumulator (A) to register H {H = ADH}
        MVI A, 00H        ; Load the value 00H in the accumulator (A)
        JNC skip          ; Jump to skip if no carry
        INR A             ; Increment A if carry occur
skip:   SHLD 9700H        ; Store the sum in memory location 9700H (lower byte) and 9701H (upper byte)
        STA 9702H         ; Store the result specified in the memory location 9702H of the accumulator (A)
        RST 1             ; Reset the program

; End of code
