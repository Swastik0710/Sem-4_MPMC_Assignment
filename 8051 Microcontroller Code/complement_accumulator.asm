; Write a program to load the accumulator (A) to put the value 55H and complement the accumulator (A). Store the result in register R4.

MOV A, #55H      ; Load the value 55H to the accumulator (A) {A = 55H}
CPL A            ; Complement the accumulator (A) {Take 1's complement of accumulator A}
MOV R4, A        ; Move the content of the accumulator (A) to register R4
LCALL 00BBH      ; Call a subroutine located at memory address 00BBH

; End of code
