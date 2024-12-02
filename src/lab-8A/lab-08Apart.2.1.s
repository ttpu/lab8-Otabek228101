.global _start
_start:
    MOV R0, #10
    MOV R1, #20
    CMP R0, R1
    MOVGT R2, #1
    MOVLE R2, #0 