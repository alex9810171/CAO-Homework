.text 				# text section
.globl main			# call main by SPIM

main:	
    li $s0, 9		
	sll $t2, $s0, 4
    jr $ra
