; Write a program to interchange the contents of two 8-bit registers.

; Initial contents of registers B and C
MVI B, 44H      ; Load the value 44H in register B
MVI C, 55H      ; Load the value 55H in register C

; Interchange the values of registers B and C
MOV A, B        ; Moving the content of register B to the accumulator (A) {A = 44H}
MOV B, C        ; Moving the content of register C to register B {B = 55H}
MOV C, A        ; Moving the content of the accumulator (A) to register C {C = 44H}
RST 1           ; Resetting the program

; End of code
