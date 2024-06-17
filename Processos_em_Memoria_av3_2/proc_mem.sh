#!/bin/bash

# Nomes dos alunos: 
#   Gabriel de Araujo Claudino 
#   Luca Torres Villela
# Data: 2024-06-17
# Versão: 1.0

# Variáveis globais
LOG_DIR="./logs" # Diretório onde os logs serão salvos

# Função para criar diretório de logs, se não existir
create_log_dir() {
    if [ ! -d "$LOG_DIR" ]; then
        mkdir -p "$LOG_DIR"
    fi
}

# Função para obter os dez processos com maior uso de memória
get_top_memory_processes() {
    ps --no-headers -eo pid,comm,%mem --sort=-%mem | head -n 10
}

# Função para salvar informações de um processo em um arquivo de log
log_process_info() {
    local pid=$1
    local process_name=$2
    local mem_usage=$3

    # Obter data e hora atuais
    local current_datetime=$(date "+%Y-%m-%d, %H:%M:%S")
    
    # Formatar a linha de log
    local log_entry="$current_datetime, ${mem_usage}MB"
    
    # Nome do arquivo de log
    local log_file="${LOG_DIR}/${process_name}.log"
    
    # Salvar log
    echo "$log_entry" >> "$log_file"
}

# Função principal
main() {
    create_log_dir
    
    # Obter os dez processos com maior uso de memória
    local processes=$(get_top_memory_processes)
    
    # Iterar sobre cada processo e salvar suas informações
    while read -r pid process_name mem_usage; do
        # Converter uso de memória de percentual para MB
        local mem_in_mb=$(awk "BEGIN {print $mem_usage * $(free -m | awk '/^Mem:/ {print $2}') / 100}")
        log_process_info "$pid" "$process_name" "$mem_in_mb"
    done <<< "$processes"
}

# Chamar a função principal
main
