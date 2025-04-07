; Write a program to compare two strings stored from memory location 8091H and 8061H. Length of the string is stored in 8060H. If both strings are same, place 00H otherwise place FFH at the memory location 8070H.

        LXI H, 8091H      ; Load the immediate value 8091H to the register pair (H, L)
        LXI B, 8061H      ; Load the immediate value 8061H to the register pair (B, C)
        LDA 8060H         ; Load the value from memory location 8060H to the accumulator (A)
        MOV D, A          ; Move the content of the accumulator (A) to register D {D = value at 8060H}
loop:   LDAX B            ; Load the accumulator (A) with content in address pointed by (B, C) register pair
        CMP M             ; Compare content of address pointed by (H, L) register pair with content of the accumulator (A)
        JNZ skip          ; Jump if no zero, to the address pointed by 'skip'
        INX H             ; Increment HL register pair to point to the next source memory location {(H, L) = H}
        INX B             ; Increment BC register pair to point to the next source memory location {(B, C) = B}
        DCR D             ; Decrement content of D register
        JNZ loop          ; Jump if no zero, to the address pointed by 'loop'
        MVI A, 00H        ; Load the value 00H in the accumulator (A)
        STA 8070H         ; Store the result specified in the memory location 8070H of the accumulator (A)
        JMP skip          ; Jump to 'skip'
skip:   MVI A, FFH        ; Load the value FFH in the accumulator (A)
        STA 8070H         ; Store the result specified in the memory location 8070H of the accumulator (A)
        RST 1             ; Reset the program
        
; End of code
