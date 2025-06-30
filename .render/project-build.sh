#!/usr/bin/env bash
set -o errexit

echo "Usando Node.js 18 (preinstalado en Render)"
node -v
yarn -v || npm install -g yarn

echo "Instalando dependencias..."
yarn install

echo "Compilando frontend..."
yarn build

echo "Listo para iniciar"
