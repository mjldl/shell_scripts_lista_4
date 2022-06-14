#!/bin/bash

read -p "r - Digite o nome de um aquivo que será processado (Sugestão: l4q3ANEX): " arquivo

echo 'a - Remova todas as letras do arquivo.'
echo 'b - Remova todos os dígitos do arquivo.'
echo 'c - Substitua todos os carateres que não são letras e nem dígitos do arquivo por $'
echo 'q - Saia do script.'

read -p "Digite uma opção: " process
case $process in
	a)
		clear
		echo -e 'Removendo todas as letras...\n'
		sleep 1
		cat $arquivo | sed -r 's/[a-zA-Z]*//g'
		;;
	b)
		clear
		echo -e 'Removendo todos os dígitos...\n'
		sleep 1
		cat $arquivo | sed -r 's/[0-9]*//g'
		;;
	c)
		clear
		echo -e 'Substituindo todos os caracteres que não são letras e nem dígitos por $\n'
		sleep 1
		cat $arquivo | sed -s 's/[\-\,\.\*\!\@\<\>\^\"\{\}\-\+\#\&\(\)\;\:\|\/\\=\%]*/$/g'
		;;
	q)
		clear
		echo -e 'Saindo do script...\n'
		;;
	*)
esac
