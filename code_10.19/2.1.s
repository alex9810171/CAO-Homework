.text 				# text section
.globl main			# call main by SPIM

main:	
  la $t0, value
  la $s7, value
  sub $t0, $s3, $s4
  add $t0, $s6, $t0
  lw $t1, 16($t0)
  sw $t1, 32($s7)

.data				# data section
value:	.word 10, 20, 0     	# data for addition