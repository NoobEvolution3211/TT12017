#!/bin/bash
SALARIO=1; PRIMEIRO=0; SEGUNDO=0; TERCEIRO=0
while (( $SALARIO != 0 )); do
	echo "Digite Salário"
	read SALARIO
	[ $SALARIO == $PRIMEIRO ] && SALARIO="-1" 
	[ $SALARIO == $SEGUNDO ] && SALARIO="-1"
	[ $SALARIO == $TERCEIRO ] && SALARIO="-1"
	if (( $SALARIO > $PRIMEIRO )); then
		TERCEIRO=$SEGUNDO
		SEGUNDO=$PRIMEIRO
		PRIMEIRO=$SALARIO
	else
	   	if (( $SALARIO > $SEGUNDO )); then
			TERCEIRO=$SEGUNDO
			SEGUNDO=$SALARIO
		else
			if (( $SALARIO > $TERCEIRO )); then
				TERCEIRO=$SEGUNDO
			fi
		fi
	fi
done
echo $PRIMEIRO
echo $SEGUNDO
echo $TERCEIRO
