	   LXI D,2000
	   LXI H,1000
	   MOV C,M

J2:	   INX H
	   MOV A,M
	   ANI F0
	   MVI B,04

J1:	   RLC
	   DCR B
	   JNZ J1
	   MOV B,A
	   MOV A,M
	   ANI 0F
	   ADD B
	 
	   STAX D
	   INX D
	   DCR C
	   JNZ J2
	   HLT
# ORG 1000
# DB 03,12,13,99
