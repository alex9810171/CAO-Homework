.text 				# text section
.globl main			# call main by SPIM

# int k = 5;
# int i = 0;
# int save[] = {5, 5, 5, 5, 5, 6}
# while (save[i] == k) i += 1;

main:	
    li $s3, 0      # i=0
    li $s5, 5      # k=5
    li $t1, 0      # &save[i]
	la $s6, save   # $s6=&save[0]
Loop:
    sll $t1, $s3, 2    # $t1 = i lshift 2
	add $t1, $t1, $s6  # &save[i] = &save[0] + i lshift 2
	lw  $t0, 0($t1)    # $t0 = save[i]	
    bne $t0, $s5, Exit # Break if save[i] != k 
	addi $s3, $s3, 1   # i+=1
	j Loop
Exit:
    jr $ra

.data				# data section

save:	.word 5, 5, 5, 5, 5, 6     	# data for addition