; Write a program to add two data bytes which are stored in general purpose registers. Store the result in memory location ABC0H.

MVI B, 22H      ; Load the first data byte 22H in register B
MVI C, AAH      ; Load the second data byte AAH in register C
MOV A, C        ; Move the value of register C to the accumulator (A) {A = AAH}
ADD B           ; Add the value in register B to the accumulator (A)
STA ABC0H       ; Store the result specified in the memory location ABC0H of the accumulator (A)
RST 1           ; Reset the program

; End of code
