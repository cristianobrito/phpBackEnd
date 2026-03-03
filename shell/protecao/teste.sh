#!/bin/bash
PASTA="shell/protecao/teste"
ARQUIVO="$PASTA/cry.txt"

if [ -d "$PASTA" ]; then
  echo "pasta existe"
else
  echo "pasta nao existe criando. . ."
  mkdir "teste"
  mkdir -p "teste2" 
fi

if [ -f "$ARQUIVO" ]; then
  echo "arquivo existe"
else
  echo "arquivo nao existe criando..."
  touch "$ARQUIVO"
fi

sleep 5
rmdir "teste2"

echo "script finalizado em: $(date)" >> "$ARQUIVO"
echo "Processo concluído. Verifique $ARQUIVO"
