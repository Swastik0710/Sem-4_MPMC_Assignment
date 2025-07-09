; Write a program to exchange content of register R2 with the content of the accumulator (A).

MOV A, #11H      ; Load the value 11H to the accumulator (A) {A = 11H}
MOV R2, #22H     ; Load the value 22H to register R2 {R2 = 22H}
XCH A, R2        ; Exchange the content of register R2 with the accumulator (A)
LCALL 00BBH      ; Call a subroutine located at memory address 00BBH

; End of code
