#!/bin/bash
QNT=1; clear
echo "Digite um número"
read DIG
NUM=$DIG
while (( $DIG != 0 )); do
 echo "Digite um número"
 read DIG
 if (( $DIG != 0 )); then
   if (( $DIG <= $NUM )); then
     if (( $DIG < $NUM)); then
	NUM=$DIG
	QNT=1
     else
	let QNT=($QNT+1)
     fi
   fi
 fi

done

echo "O menor número é: $NUM; e foi digitado $QNT vez(es)"
