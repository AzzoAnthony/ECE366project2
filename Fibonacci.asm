# Using https://youtu.be/B6ky4Weahm4?si=98djr1S51cK_xaW- as a referance
.data
	theNumber:	.word 6	# input (may change to test for different numbers)
	theAnswer:	.word 0 # output is stored in $t1 (b)

.text #text is for all the code in my program
	.globl main
		
main:
	# read integer
	LW $a0, theNumber
	
	# fibonacci function
	# if n <= 1
	BLE $a0, 1, fibonacciDone
	
	li $t0, 0 # a = 0
	li $t1, 1 # b = 1
	li $t2, 1 # i = 1
	
forLoop:
	move $t3, $t1 # temp = b
	ADD $t1, $t0, $t1 # b = a + b
	move $t0, $t3 # a = temp
	ADDI $t2, $t2, 1 # i++
	BNE $t2, $a0, forLoop # jump back to the for loop if i != n
	
fibonacciDone:
	SW $t1, theAnswer #store n if n <= 1

	
	
	
	
	