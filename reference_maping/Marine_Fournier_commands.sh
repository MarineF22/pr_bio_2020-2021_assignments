#!/bin/bash

while true
do
  clear
  echo "1 - Ver o numero de reads de um aluno: "
  echo "2 - Ver 5 numero de reads de 5 alunos: "
  echo "3 - Ver comando utilizado (samtools): "
  echo "4 - Ver o meu numero de reads: "
  echo "Utilize a tecla (q) para sair do programa: "
  echo
  echo "A espera de uma opcao: "
  read opcao
  case "$opcao" in
	1) read -p "Escolha um numero de um/a aluno/a " Posicao
	   sh ./script $Posicao ;;
	3) cat script ;;
	4) echo "numreads 23" ;;
	5) read -p "Por favor escolha 5 posicoes -> " POS1 POS2 POS3 POS4 POS5
           echo "Marine_Fournier_results.txt foi adicionado ao respetivo diretorio!"
           touch Marine_Fournier_results.txt
           rm Marine_Fournier_results.txt
           bash ./script2 $POS1 $POS2 $POS3 $POS4 $POS5 >> Marine_Fournier_results.txt ;;
	q) exit ;;
       esac
       echo "Porfavor utilize (Enter) para voltar ao menu:"
       read input
done
clear
