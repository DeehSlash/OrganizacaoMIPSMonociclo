# Trecho em C para valida��o do jr e do jal:
# int leaf_example (int g, int h, int i, int j) {
#	int f;
#	f = (g + j) - (i + j);
#	return f;

.text						# segmento de c�digo (programa)
	j 		main

leaf_example:
	add 	$t0, $a0, $a1	# $t0 = g + h
	add 	$t1, $a2, $a3	# #t1 = i + j
	sub 	$v0, $t0, $t1	# f = $t0 - $t1
	jr 		$ra				# retorna do procedimento
	
main:
	addi	$a0, $zero, 4	# inicializa 1� par�metro (g)
	addi	$a1, $zero, 3	# inicializa 2� par�metro (h)
	addi	$a2, $zero, 2	# inicializa 3� par�metro (i)
	addi	$a3, $zero, 1	# inicializa 4� par�metro (j)
	
	jal 	leaf_example	# chama o procedimento
	
	nop						# n�o faz nada. $v0 tem o resultado do procedimento