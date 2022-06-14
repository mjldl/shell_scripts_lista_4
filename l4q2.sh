#!/bin/bash

#OBS: Para uma dado arquivo no formato: |name url number_of_downloads|, altere as variável pessoa e path_arquivo, de acordo com a necessidade.
pessoa=(Nelson Arr445 Vianna Xico)
path_arquivo='./l4q2ANEX'
clear

echo -e "Rodando script com base no arquivo: $path_arquivo\n"

for i in ${!pessoa[@]}
do
	n=$(cat $path_arquivo | grep ${pessoa[$i]} | cut -d ' ' -f 3 | paste -sd+ | bc)
	echo "${pessoa[$i]} $n" 
done
