; Write a program to exchange the location of two numbers which are stored in 9500H and 9501H.

LDA 9500H      ; Load the value from memory location 9500H to the accumulator (A)
MOV B, A       ; Move the value of the accumulator (A) to register B {B = value at 9500H}
LDA 9501H      ; Load the value from memory location 9501H to the accumulator (A)
STA 9500H      ; Store the value in the memory location 9500H of the accumulator (A) {9500H = value at 9501H}
MOV A, B       ; Move the value of register B (the original value of 9500H) to the accumulator (A)
STA 9501H      ; Store the value in the memory location 9501H of the accumulator (A) {9501H = original value at 9501H}
RST 1          ; Reset the program

; End of code
