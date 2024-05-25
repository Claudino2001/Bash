#!/bin/bash

#Gabriel de Araujo Claudino

ENTRADA_CSV="HIST_PAINEL_COVIDBR_2023_Parte2_29mar2024.csv"

awk -F ';' '$2 == "BA" && $8 == "2023-11-01" {print $3}' "$ENTRADA_CSV"


echo "Finalizado"

