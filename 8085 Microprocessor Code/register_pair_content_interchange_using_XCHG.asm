; Write a program to interchange the contents of register pair (D, E) and (H, L) using XCHG.

; Initial contents of register pairs (D, E) and (H, L)
LXI D, 4455H      ; Load the immediate value 4455H to the register pair (D, E)
LXI H, 2233H      ; Load the immediate value 2233H to the register pair (H, L)

;  Exchange the values of register pairs (D, E) and (H, L)
XCHG              ; Exchange the contents of register pairs (D, E) and (H, L)  
RST 1             ; Reset the program

; End of code
