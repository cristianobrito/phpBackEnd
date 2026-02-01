#!/bin/bash

#####################################################################
# script que conta a quantidade de pastas e arquivos                #
#####################################################################

echo "-------------------------"
PASTA="/var/www/html"

T_PASTA=0
T_ARQUI=0
T_OUTRO=0

for ITEM in $PASTA/*
do
	if [ -d "$ITEM" ]; then
		T_PASTA=$((T_PASTA + 1))
		echo "[PASTA] $ITEM"
	elif [ -f "$ITEM" ]; then
		T_ARQUI=$((T_ARQUI + 1))
		echo "[ARQUI] $ITEM"
	else
		T_OUTRO=$((T_OUTRO + 1))
		echo "[OUTROS] $ITEM"
	fi
done

echo "total de pastas: $T_PASTA"
echo "total de arquivos: $T_ARQUI"
echo "total de outros: $T_OUTRO"

echo "----- FIM DO ARQUIVO -----"
