; A string of ten data bytes is stored from memory location 8500H. The string includes some blanks (bytes with zero values). Write a program to save the new string by eliminating all blanks from that string.

        LXI H, 8500H      ; Load the immediate value 8500H to the register pair (H, L)
        LXI D, 8500H      ; Load the immediate value 8500H to the register pair (D, E)
        MVI C, OAH        ; Load the value 0AH in register C
loop:   MOV A, M          ; Move the content of register M to the accumulator (A) {A = value at 8500H}
        CPI 00H           ; Compare the immediate value 00H with the content of the accumulator (A)
        JZ next           ; Jump if zero, to the address pointed by 'next'
        STAX D            ; Store the content of accumulator (A) into the memory location pointed by (D, E)
        INX D             ; Increment DE register pair to point to the next source memory location {(D, E) = D}
next:   INX H             ; Increment HL register pair to point to the next source memory location {(H, L) = H}
        DCR C             ; Decrement content of register C
        JNZ loop          ; Jump if no zero, to the address pointed by 'loop'
        RST 1             ; Reset the program
        
; End of code
