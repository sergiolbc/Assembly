.data
	num1: .word 0x0002 #set number variable to 2
	num2: .word 0x0004 #set number variables to 4
	#num3: .word 0xFFFF 
	
	
#logic of the program
.text


main:
	lw $t0, num1 #populate register with num1
	lw $t1, num2 #populate register with num2
	#lw $t2, num3
	ori $t1, $zero, 5
	
	mult $t0, $t1 #multiply unsigned the two number and out it register $t2
	#mult $t0, $t2
	mflo $t2
	#mfhi $t3
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	
	#li $v0, 1
	#add $a0, $zero, $t2
	#syscall