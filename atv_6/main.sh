#!/bin/bash

#Gabriel de Araujo Claudino

ENTRADA_CSV="HIST_PAINEL_COVIDBR_2023_Parte2_29mar2024.csv"
SAIDA_CSV="SOMA_CASOS.txt"

awk -F';' 'BEGIN{soma=0}{if($2=="BA" && $3=="Salvador" && $8>="2023-11-01" && $8<="2023-11-30"){soma+=$13+$14+$15}}END{print "Soma total: ",soma}' "$ENTRADA_CSV" > "$SAIDA_CSV"

echo "Finalizado"

