#!/bin/bash

# esse script pega o nome e a idade do usuario e imprime na tela

echo "---------------------------"
echo "----- Primeiro script -----"

echo "Digite seu nome: "
read NOME

echo "digite sua idade: "
read IDADE

DATA=$(date)

echo "seu nome: $NOME"
echo "sua idade: $IDADE"
echo "DATA: $DATA"
echo "===== FIM DO SCRIPT ====="
