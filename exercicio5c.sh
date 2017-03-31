#!/bin/bash
salario=1
while (( $salario != 0 )); do
	read salario -i "Digite o Salário"
	echo $salario >> arquivo.txt
done
cat arquivo.txt | sort -r | uniq | head -n 3
