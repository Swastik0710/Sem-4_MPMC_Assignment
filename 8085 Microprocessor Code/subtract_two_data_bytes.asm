; Write a program to subtract two data bytes which are stored in memory locations D600H and D601H. Store the result in memory location B000H.

LDA D600H      ; Load the value from memory location D600H to the accumulator (A)
MOV B, A       ; Move the value of the accumulator (A) to register B {B = value at D600H}
LDA D601H      ; Load the value from memory location D601H to the accumulator (A)
SUB B          ; Subtract the value in register B to the accumulator (A)
STA B000H      ; Store the result specified in the memory location B000H of the accumulator (A)
RST 1          ; Reset the program

; End of code
