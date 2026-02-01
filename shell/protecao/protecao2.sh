#!/bin/bash

##########################################################################
# script procura por pasta e arquivo se um ou outro ou ambos nao existir #
# ele cria                                                               #
##########################################################################

echo "--------------------------"
echo "----- SEGUNDO SCRIPT -----"

PASTA="/var/www/html/shell"
ARQUIVO="$PASTA/protecao/protecao.sh"

if [ -d "$PASTA" ]; then
	echo "pasta existe"
else
	echo "pasta nao existe criando..."
	mkdir shell
fi

if [ -f "$ARQUIVO" ]; then
	echo "arquivo existe"
else
	echo "arquivo nao existe criando..."
	touch protecao.sh
fi

echo "----- FIM DO SCRIPT ----"
