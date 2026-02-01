#!/bin/bash

##########################################################################
# script quanta a quantidade de arquivos e joga a saida em outro arquivo #
##########################################################################

echo "-------------------------"

PASTA="/var/www/html"
LOG="$PASTA/shell/protecao/scan.log"

TPHP=0
TTXT=0
TLOG=0
TOUTROS=0

echo "pasta analizada $PASTA" > $LOG
echo "inicio da contagem" >> $LOG

for ITEM in $PASTA/*
do
	if [ -f "$ITEM" ]; then
	  case "$ITEM" in 
		  *.php)
			TPHP=$((TPHP + 1))
			echo "php $ITEM" >> $LOG
			;;
		  *.txt)
			TTXT=$((TTXT + 1))
			echo "txt $ITEM" >> $LOG
			;;
		  *.log)
			TLOG=$((TLOG + 1))
			echo "log $ITEM" >> $LOG
			;;
		  *)
			TOUTROS=$((TOUTROS + 1))
			echo "outros $ITEM" >> $LOG
	  esac
	fi
done

echo "===== saida ====="
echo "php $TPHP" >> $LOG
echo "txt $TTXT" >> $LOG
echo "log $TLOG" >> $LOG
echo "outros $TOUTROS" >> $LOG

echo "===== fim do script ====="


