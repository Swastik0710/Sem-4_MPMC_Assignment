; Write a program to find out the square of an 8-bit data in the range of 0-9 using the look-up table technique. Assume the look-up table is available in memory with starting address 9500H. Assume that the data is available at 9045H memory location and also store the result in memory location 8500H.
; Look-up table:
9500H: 00H (Square of 0)
9501H: 01H (Square of 1)
9502H: 04H (Square of 2)
9503H: 09H (Square of 3)
9504H: 16H (Square of 4)
9505H: 25H (Square of 5)
9506H: 36H (Square of 6)
9507H: 49H (Square of 7)
9508H: 64H (Square of 8)
9509H: 81H (Square of 9)

; Assume the number to be squared is stored in memory location 9045H
; Store the result in memory location 8500H

MVI H, 95H      ; Load the value 95H in register H
LDA 9045H       ; Load the value from memory location 9045H to the accumulator (A)
MOV L, A        ; Move the content of the accumulator (A) to register L {L = value at 9045H}
MOV A, M        ; Move the content of register M to the accumulator (A)
STA 8500H       ; Store the result specified in the memory location 8500H of the accumulator (A)
RST 1           ; Reset the program

; End of code
