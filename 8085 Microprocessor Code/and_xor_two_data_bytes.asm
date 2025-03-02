; Write a program to determine AND & XOR operations on two data bytes which are stored in general purpose registers. Store the result in memory locations 8500H and 8501H respectively.

MVI B, FFH      ; Load the first data byte FFH in register B
MVI C, 0FH      ; Load the second data byte 0FH in register C
MOV A, C        ; Move the value of register C to the accumulator (A) {A = 0FH}
ANA B           ; Perform the AND operation between the data in the accumulator (A) and register B
STA 8500H       ; Store the result of the AND operation specified in the memory location 8500H of the accumulator (A)
MOV A, C        ; Move the value of register C to the accumulator (A) {A = 0FH}
XRA B           ; Perform the XOR operation between the data in the accumulator (A) and register B
STA 8501H       ; Store the result of the XOR operation specified in the memory location 8500H of the accumulator (A)
RST 1           ; Reset the program

; End of code
