#!/bin/bash
# Script local para probar la encriptación con StatiCrypt
# Uso: ./encrypt.sh

PASSWORD="starteam2026"

echo "Encriptando index.html con StatiCrypt..."

npx staticrypt index.html -p "$PASSWORD" \
  --short \
  --template-title "StarTeam.pro" \
  --template-instructions "Introduce la contraseña para acceder" \
  --template-button "Acceder" \
  --template-color-primary "#D4A017" \
  --template-color-secondary "#0A0A0F" \
  -o encrypted.html

echo "Archivo encriptado generado: encrypted.html"
echo "Abre encrypted.html en el navegador y usa la contraseña: $PASSWORD"
