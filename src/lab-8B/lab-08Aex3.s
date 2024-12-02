.global _start
_start:
    LDR R0, =array
    MOV R1, #5  
    BL find_min_max
    MOV R2, R0
    MOV R3, R1 
    MOV R7, #1
    SVC #0
find_min_max:
    PUSH {R4, R5, R6, LR}

    LDR R4, [R0]
    MOV R5, R4
    MOV R6, R4
    ADD R0, R0, #4
    SUB R1, R1, #1 
loop:
    CMP R1, #0 
    BEQ done

    LDR R4, [R0]
    CMP R4, R5
    BGT update_max 
    CMP R4, R6
    BLT update_min

    ADD R0, R0, #4
    SUB R1, R1, #1 
    B loop
update_max:
    MOV R5, R4
    B loop
update_min:
    MOV R6, R4
    B loop
done:
    MOV R0, R6
    MOV R1, R5
    POP {R4, R5, R6, PC}
.data
array: .word 1, 4, 3, -2, 5
