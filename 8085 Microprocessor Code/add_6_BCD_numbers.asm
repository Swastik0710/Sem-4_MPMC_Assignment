; Write a program to add 6 BCD numbers which are stored starting from memory location 8500H. Store the BCD sum, number of times carry generated.

        LXI H, 8500H      ; Load the immediate value 8500H to the register pair (H, L)
        MVI B, 00H        ; Load the value 00H in register B
        MVI C, 05H        ; Load the value 05H in register B
        MOV A, M          ; Move the content of register M to the accumulator (A) {A = value at 8500H}
back:   INX H             ; Increment HL register pair to point to the next source memory location {(H, L) = H}
        ADD M             ; Add the next BCD number stored in memory to accumulator A
        DAA               ; Adjust result for BCD addition
        JNC skip          ; If no carry is generated, skip the next instruction
        INR B             ; Increment B (carry counter)
skip:   DCR C             ; Decrement loop counter (C)
        JNZ back          ; If C is not zero, repeat the loop
        STA 9000H         ; Store the result specified in the memory location 9000H of the accumulator (A)
        MOV A, B          ; Move the content of register B to the accumulator (A) {A = value of register B}
        STA 9001H         ; Store the result specified in the memory location 9001H of the accumulator (A)
        RST 1             ; Reset the program
        
; End of code
