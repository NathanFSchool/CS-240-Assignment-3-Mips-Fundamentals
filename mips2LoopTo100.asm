.data 
message: .asciiz "\n"

.text
.globl main 

main: 
	li $t0, 1
	
for_loop: 
	bgt $t0, 100, end_label
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, message
	syscall
	

	addi $t0, $t0, 1
	j for_loop

	
end_label:
	li $v0, 10
	syscall
	
