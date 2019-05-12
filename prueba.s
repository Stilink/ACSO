@ R12 tipo de triangulo: 0. No es un triangulo 
@ 1. Equilatero y acutangulo. 
@ 2. Escaleno y rectangulo.
@ 3. Escaleto y obtusangulo.
@ 4. Escaleto y acutangulo.
@ 5. Isosceles y rectangulo.
@ 6. Isosceles y obtusangulo.
@ 7. Isosceles y acutangulo.
@ R11 Area
.text
.global _start
_start:
	LDR R1, X1
	LDR R2, Y1
	LDR R3, X2
	LDR R4, Y2
	LDR R5, X3
	LDR	R6, Y3
	SUB R8, R1, R3
	MOV R1, R8
	SUB R8, R6, R4
	MOV R6, R8
	MUL R7, R1, R6
	MOV R1, R7
	SUB R8, R2, R4 
	MOV R2, R8
	SUB R8, R5, R3
	MOV R5, R8
	MUL R9, R2, R5
	MOV R2, R9
	SUB R0, R1, R2
	MOV R1, #10
	MUL R2, R0, R1
	CMP R2, #0
	BEQ NotATriangle
	BMI Negative
Continue: LSR R11, #1
	LDR R1, X1
	LDR R2, Y1
	LDR R3, X2
	LDR R4, Y2
	SUB R0, R1, R3
	MUL R1, R0, R0
	SUB R0, R2, R4
	MUL R2, R0, R0
	ADD R10, R1, R2
	LDR R1, X1
	LDR R2, Y1
	LDR R3, X3
	LDR R4, Y3
	SUB R0, R1, R3
	MUL R1, R0, R0
	SUB R0, R2, R4
	MUL R2, R0, R0
	ADD R9, R1, R2
	LDR R1, X2
	LDR R2, Y2
	LDR R3, X3
	LDR R4, Y3
	SUB R0, R1, R3
	MUL R1, R0, R0
	SUB R0, R2, R4
	MUL R2, R0, R0
	ADD R8, R1, R2
	MOV R7, #1
	SVC 0
NotATriangle:
	MOV R12, #1
	MOV R7, #1
	SVC 0
Negative:
	MOV R0, R2
	SUB R1, R2, R0
	SUB R11, R1, R2
	B Continue
.d:
	X1: .word 0
	Y1: .word 0
	X2: .word 0
	Y2: .word -3
	X3: .word 3
	Y3: .word 0
.end
