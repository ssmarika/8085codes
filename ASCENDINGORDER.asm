
	MVI C, 03
J3:	LXI H,2000
	MOV D,C
J2:	MOV A,M
	INX H
	MOV B,M
	CMP B
	JC J1
	MOV M,A
	DCX H
	MOV M,B
	INX H
J1:	DCR D
	JNZ J2
	DCR C
	JNZ J3
	HLT

#ORG 2000
#DB AA,13,05,99
