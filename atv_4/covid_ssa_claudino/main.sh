#!/bin/bash

#Gabriel de Araujo Claudino

ENTRADA_CSV="HIST_PAINEL_COVIDBR_2023_Parte2_29mar2024.csv"

SAIDA_CSV="dados_covid_salvador_2023_2.csv"

awk -F';' 'NR==1 { print $8"," $12"," $14 }' "$ENTRADA_CSV" > "$SAIDA_CSV"

awk -F';' '{ if ($2=="BA" && $3=="Salvador") print $8"," $12"," $14 }' "$ENTRADA_CSV" >> "$SAIDA_CSV"

echo "Os dados para Salvador, BA, no segundo semestre de 2023 foram extraídos para o arquivo: $SAIDA_CSV"
