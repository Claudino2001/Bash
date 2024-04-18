#!/bin/bash

#Gabriel de Araujo Claudino

ENTRADA_CSV="HIST_PAINEL_COVIDBR_2023_Parte2_29mar2024.csv"

awk -F';' 'BEGIN{soma=0}{if($2=="BA" && $3=="Salvador" && $8>="2023-11-01" && $8<="2023-11-30"){soma+=$14}}END{print soma}' "$ENTRADA_CSV"

echo "Finalizado"
