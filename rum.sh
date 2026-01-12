#!/bin/bash

# Verifica se foi passado um arquivo
if [ $# -ne 1 ]; then
    echo "Uso: ./run.sh arquivo.c"
    exit 1
fi

# Nome do arquivo de entrada
SRC="$1"

# Verifica se o arquivo existe
if [ ! -f "$SRC" ]; then
    echo "Erro: arquivo '$SRC' não encontrado."
    exit 1
fi

# Remove extensão .c
BASE="${SRC%.c}"

# Nome do executável
OUT="${BASE}.out"

# Compila com biblioteca matemática
gcc "$SRC" -o "$OUT" -lm

# Verifica se compilou corretamente
if [ $? -ne 0 ]; then
    echo "Erro na compilação."
    exit 1
fi

# Executa o programa
echo "Executando $OUT:"
./"$OUT"
