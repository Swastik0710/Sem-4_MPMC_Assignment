; Write a program to determine F = X'Y + XY' on two data bytes which are stored in general purpose registers. Store the result in memory location 8600H.

MVI B, 02H      ; Load the value 02H in register B
MVI C, 03H      ; Load the value 03H in register C
MOV A, B        ; Move the content of register B to the accumulator (A) {A = 02H}
CMA             ; Take the one's complement of the data in the accumulator A (X')
ANA C           ; Perform the AND operation between the data in the accumulator (A) {X'} and register C (Y)
MOV H, A        ; Move the content of the accumulator (A) to register H {H = 01H}
MOV A, C        ; Move the content of register C to the accumulator (A) {A = 03H}
CMA             ; Take the one's complement of the data in the accumulator A (Y')
ANA B           ; Perform the AND operation between the data in the accumulator (A) {X} and register B (Y')
ADD H           ; Add the value of register H to the accumulator (A)
STA 8600H       ; Store the value in the memory location 8500H of the accumulator (A)
RST 1           ; Reset the program

; End of code
