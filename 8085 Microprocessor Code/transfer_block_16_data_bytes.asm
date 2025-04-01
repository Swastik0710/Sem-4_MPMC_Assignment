; Write a program to transfer the block of 16 data bytes which are stored starting from memory location 9000H into the new memory location starting from 9600H.

; Initial contents of register pairs (H, L) and (D, E)
        LXI H, 9000H      ; Load the immediate value 9000H to the register pair (H, L)
        LXI D, 9600H      ; Load the immediate value 9600H to the register pair (D, E)

; Transfer the data into new memory location from the previous memory location
        MVI C, 10H        ; Load the value 10H in register C
back:   MOV A, M          ; Move the content of register M to the accumulator (A) {A = value at 9600H}
        STAX D            ; Store the content of accumulator (A) into the memory location pointed by (D, E) 
        INX H             ; Increment HL register pair to point to the next source memory location {(H, L) = 9001H}
        INX D             ; Increment DE register pair to point to the next destination memory location {(D, E) = 9601H}
        DCR C             ; Decrement C (counter), as one byte has been transferred {C = 0FH}
        JNZ back          ; If C is not zero, jump to 'back' to repeat the transfer
        RST 1             ; Reset the program

; End of code
