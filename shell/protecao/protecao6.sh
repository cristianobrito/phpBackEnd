#!/bin/bash

######################################################################
# script 6                                                           #
# monitoramento                                                      #
######################################################################
echo "=============================="

PASTA="/var/www/html"
BASE="/var/www/html/shell/protecao"
ATUAL="$BASE/estado_atual.txt"
ANTERIOR="$BASE/estado_anterior.txt"

echo "MONITORAMENTO DE ALTERACOES"
date

# gera estado atual
ls -lR $PASTA > $ATUAL

# se nao existir estado anterior cria
if [ ! -f "$ANTERIOR" ]; then
	echo "Primeira execucao criando baseline..."
	cp "$ATUAL" "$ANTERIOR"
	exit 0
fi

echo "comparando estados"
diff $ANTERIOR $ATUAL

# atualiza a baseline
cp $ATUAL $ANTERIOR

echo "===== FIM DO MONITORAMENTO ====="
