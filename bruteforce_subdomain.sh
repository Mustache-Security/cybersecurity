##!/usr/bin/env bash

echo "---------------------------------------------------"
echo "Ferramenta de Bruteforce de Subdominios -- SAMU"
echo "---------------------------------------------------"

for subdominio in $(cat $1); do

    echo "---------------------------------------------------"
    echo "---------------------------------------------------"

    echo "Testando: $subdominio.$2";
    host "$subdominio.$2" | grep -v "NXDOMAIN"; 
    
    echo "---------------------------------------------------"
    echo "---------------------------------------------------"


done

# Ferramenta simples para mapear os Subdominios existentes de um dominio desejado