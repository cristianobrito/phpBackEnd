#!/bin/bash

PASTA="/var/www/html"
BASE="/var/www/html/shell/protecao"
ATUAL="$BASE/estado_atual.txt"
ANTERIOR="$BASE/estado_anterior.txt"

echo "MONITORAMENTO DE ALTERACOES"
date

ls -lR "$PASTA" > "$ATUAL"

if [ ! -f "$ANTERIOR" ]; then
    echo "Criando baseline inicial..."
    cp "$ATUAL" "$ANTERIOR"
    exit 0
fi

echo "=== DIFERENCAS DETECTADAS ==="
diff "$ANTERIOR" "$ATUAL"

echo
read -p "Atualizar baseline? (s/n): " OP

if [ "$OP" = "s" ]; then
    cp "$ATUAL" "$ANTERIOR"
    echo "Baseline atualizada."
else
    echo "Baseline mantida."
fi
