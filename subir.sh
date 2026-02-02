# echo "git push origin main && git push gitlab main" > subir.sh
# chmod +x subir.sh

#!/bin/bash

# --- Configurações de Cores para o Terminal ---
VERDE='\033[0;32m'
VERMELHO='\033[0;31m'
NC='\033[0m' # Sem cor

echo -e "${VERDE}Iniciando sincronização dupla...${NC}"

# 1. Enviar para o GitHub (Principal)
echo "-----------------------------------"
echo "Subindo para o GitHub (origin)..."
if git push origin main; then
    echo -e "${VERDE}OK: GitHub atualizado!${NC}"
else
    echo -e "${VERMELHO}ERRO: Falha ao subir para o GitHub.${NC}"
    exit 1
fi

# 2. Enviar para o GitLab (Espelho)
echo "-----------------------------------"
echo "Subindo para o GitLab (gitlab)..."
if git push gitlab main; then
    echo -e "${VERDE}OK: GitLab atualizado!${NC}"
else
    echo -e "${VERMELHO}ERRO: Falha ao subir para o GitLab. Verifique o Token.${NC}"
    exit 1
fi

echo "-----------------------------------"
echo -e "${VERDE}Sucesso total! Código sincronizado nos dois servidores.${NC}"