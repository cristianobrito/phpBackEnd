#!/bin/bash

#######################################################################
# varredura de arquivos                                               #
#######################################################################

echo "-------------------------"
echo " teste de script"

PASTA="/var/www/html"

for ITEM in $PASTA/*
do
	if [ -d "$ITEM" ]; then
		echo "[PASTA] $ITEM"
	elif [ -f "$ITEM" ]; then
		echo "[ARQUIVO] $ITEM"
	fi
done

echo "----- FIM DA VARREDURA -----"

date
