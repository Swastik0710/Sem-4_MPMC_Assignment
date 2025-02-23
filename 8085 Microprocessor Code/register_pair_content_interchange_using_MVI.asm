; Write a program to interchange the contents of register pair (B, C) and (D, E) using MVI.

; Initial contents of registers B, C, D and E
MVI B, 22H      ; Load the value 22HH in register B
MVI C, 33H      ; Load the value 33H in register C
MVI D, 44H      ; Load the value 44H in register B
MVI E, 55H      ; Load the value 55H in register C

;  Interchange the values of registers B, C, D and E
MOV A, B        ; Move the content of register B to the accumulator (A) {A = 22H}
MOV B, D        ; Move the content of register D to register  {B = 44H}
MOV D, A        ; Move the content of the accumulator (A) to register D {D = 22H}
MOV A, C        ; Move the content of register C to the accumulator (A) {A = 33H}
MOV C, E        ; Move the content of register E to register C {C = 55H}
MOV E, A        ; Move the content of the accumulator (A) to register E {E = 33H}
RST 1           ; Reset the program

; End of code
