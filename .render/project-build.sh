#!/usr/bin/env bash
set -o errexit

echo "Instalando dependencias Ruby..."
bundle install

echo "Instalando dependencias Node (si aplica)..."
yarn install || echo "No hay package.json, se omite yarn."

echo "Precompilando assets..."
bundle exec rails assets:precompile

echo "Listo para iniciar"
