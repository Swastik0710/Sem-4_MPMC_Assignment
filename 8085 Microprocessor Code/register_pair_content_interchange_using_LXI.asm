; Write a program to interchange the contents of register pair (B, C) and (D, E) using LXI.

; Initial contents of register pairs (B, C) and (D, E)
LXI B, 2233H      ; Load the immediate value 2233H to the register pair (B, C)
LXI D, 4455H      ; Load the immediate value 4455H to the register pair (D, E)

;  Interchange the values of register pairs (B, C) and (D, E)
MOV H, B        ; Move the content of register B to register H {H = 22H}
MOV L, C        ; Move the content of register C to register L {L = 33H}
MOV B, D        ; Move the content of register D to register B {B = 44H}
MOV C, E        ; Move the content of register E to register C {C = 55H}
MOV D, H        ; Move the content of register H to register D {D = 22H}
MOV E, L        ; Move the content of register L to register E {E = 33H}
RST 1           ; Reset the program

; End of code
