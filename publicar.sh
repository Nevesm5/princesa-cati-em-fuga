#!/bin/bash
# Publica o projeto em https://github.com/nevesm5/princesa-cati-em-fuga
# Antes: crie o repositório VAZIO (sem README) em https://github.com/new com o nome princesa-cati-em-fuga
set -e
git init
git add .
git commit -m "Princesa Cati em Fuga - primeira versão"
git branch -M main
git remote add origin https://github.com/nevesm5/princesa-cati-em-fuga.git
git push -u origin main
echo
echo "Pronto! Agora ative o GitHub Pages: Settings > Pages > Deploy from a branch > main > / (root)"
echo "O jogo ficará em: https://nevesm5.github.io/princesa-cati-em-fuga/"
