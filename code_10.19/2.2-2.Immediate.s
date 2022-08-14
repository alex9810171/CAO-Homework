.text 		# text section
.globl main	# call main by SPIM

main:
    li   $s3, 0
    addi $s3, $s3, 6
    addi $s2, $s3, -3
    jr $ra
