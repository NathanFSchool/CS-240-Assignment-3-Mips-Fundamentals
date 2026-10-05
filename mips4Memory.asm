.data 
value: .word 42
value2: .word 43
valueSum: .word 44


.text
.globl main

main:
	li $t0, 24
	sw $t0, value
	
	li $t1, 11
	sw $t1, value2
	
	#loading from memory
	lw $t0, value
	lw $t1, value2
	
	
	#adding them in a register
	add $t3, $t0, $t1
	
	#sending back into memeory 
	sw $t3, value
	
	#end program
	li $v0, 10
	syscall