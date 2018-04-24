.data
	a	:.word	8
.text
main:
	j 	proc1

proc2:
	addi	$t1, $zero, 100
	j 	fim	
	
proc1:
	j 	proc2
	
fim:
	addi	$t2, $zero, 4