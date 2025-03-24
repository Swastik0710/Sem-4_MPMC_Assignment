; Write a program to mask the lower 4 bits of an 8 bit number stored at 9000H. Store the result in register D.

LDA 9000H      ; Load the value from memory location 9000H to the accumulator (A)
ANI F0H        ; Mask the lower 4 bits by performing immediate logical AND operation with F0H
MOV D, A       ; Move the content of the accumulator (A) to register D {D = F0H}
RST 1          ; Reset the program

; End of code
