.global _start
_start:
    MOV R0, #0
    MOV R2, #0
loop:
    ADD R0, R0, R2
    ADD R2, R2, #1
    CMP R2, R1
    BLT loop
    MOV R7, #1 
    SVC #0