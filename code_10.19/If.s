.text 				# text section
.globl main			# call main by SPIM

main:	
    li $s3, 1
    li $s4, 2
	li $s0, 1
    bne $s3, $s4, Else
	addi $s0, $s0, 1
    j Exit
Else:
    addi $s0, $s0, -1
Exit:
    jr $ra
