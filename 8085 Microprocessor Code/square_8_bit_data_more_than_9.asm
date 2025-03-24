; Write a program to find out the square of an 8 bit data if the data is more than 09H and then store the result in memory location 8500H.

; Assume the number to be squared is stored in memory location 9045H
; Store the result in memory location 8500H

        MVI H, 95H      ; Load the value 95H in register H
        LDA 9045H       ; Load the value from memory location 9045H to the accumulator (A)
        CPI 0AH         ; Compare the immediate value 0AH with the content of the accumulator (A)
        JNC skip        ; Jump to skip if no carry
        MOV L, A        ; Move the content of the accumulator (A) to register L {L = value at 9045H}
        MOV A, M        ; Move the content of memory location whose address is stored in the HL register pair (M) to the accumulator (A) {M = content of memory location 00A (if A < 0AH)}
        JMP go          ; Jump to 'go' in the program
skip:   MVI A, FFH      ; Load the value FFH in the accumulator (A)
go:     STA 8500H       ; Store the value in the memory location 8500H of the accumulator (A) {8500H = value at 9045H}
        RST 1           ; Reset the program

; End of code
