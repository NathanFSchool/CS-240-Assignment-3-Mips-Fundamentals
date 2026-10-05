.data 
message: .asciiz "\n"
messagee: .asciiz "The final sum is "

.text
.globl main 

main: 
	li $t0, 0
	li $t4, 0 
	
for_loop: 
	bgt $t0, 100, end_label
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 4
	la $a0, message
	syscall
	
	add $t4, $t4, $t0
	addi $t0, $t0, 2
	
	j for_loop

	
end_label:

	li $v0, 4
	la $a0, messagee
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall
	
