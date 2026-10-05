.data
fizz: .asciiz "Fizz"
buzz: .asciiz "Buzz"

.text
.globl main
main:
	#input
	li $t0, 31
	
	
	li $t1, 3
	li $t2, 5
	
	#divide num by 3
	div $t0, $t1
	mfhi $t3
	
	#checks for /3
	beqz $t3, third
	
check_five:	

	#divide num by 5
	div $t0, $t2
	mfhi $t3
	

	#checks for /5
	beqz $t3, fifth
	
	j end
	
third:
	li $v0, 4
	la $a0, fizz
	syscall
	
	j check_five
	
fifth:
	li $v0, 4
	la $a0, buzz
	syscall
	
end:

	#program end
	li $v0, 10
	syscall