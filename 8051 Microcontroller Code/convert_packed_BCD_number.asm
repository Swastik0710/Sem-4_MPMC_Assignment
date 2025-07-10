; Write a program to convert a packed BCD number available in RAM location 50H to its equivalent unpacked format and store from internal memory location 40H.

MOV R0, #50H      ; Load the value 50H tO register R0 {R0 = 50H}
MOV R1, #40H      ; Load the value 40H tO register R1 {R1 = 40H}
MOV A, @R0        ; Move the content of internal memory location pointed by R0 to the accumulator (A)
ANL A, #0FH       ; Performs bitwise AND operation between the accumulator (A) and 0FH {Mask the upper nibble to keep only the lower nibble (units digit) of the BCD}
SWAP A            ; Swap the upper and lower nibbles of the data stored in the accumulator (A)
INC R1            ; Increment register R1
MOV @R1, A        ; Move the content of the accumulator (A) to the internal memory location pointed by R1
LCALL 00BBH       ; Call a subroutine located at memory address 00BBH

; End of code
