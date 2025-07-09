; Write a program to load data {(40) base 10} to accumulator (A) and copy the contents of accumulator (A) to register R3.

MOV A, #28H      ; Load the decimal value [{(40) base 10} --> 28H] to the accumulator (A) {A = 28H}
MOV R3, A        ; Move the content of the accumulator (A) to register R3 {R3 = 28H}
LCALL 00BBH      ; Call a subroutine located at memory address 00BBH

; End of code
