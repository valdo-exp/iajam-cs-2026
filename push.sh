#!/bin/bash
# Script de push automatique — iajam-cs-2026
# Appelé par Paloma après chaque mise à jour du index.html

cd /home/ubuntu/.openclaw/workspace-main/livrables

git add index.html
git diff --cached --quiet && echo "Rien à pusher." && exit 0

DATE=$(date -u '+%Y-%m-%d %H:%M UTC')
git commit -m "update: dossier pré-production — $DATE

Mise à jour automatique par Paloma (agent productrice)"

git push origin main 2>&1 && echo "✅ Push OK → https://valdo-exp.github.io/iajam-cs-2026/" || echo "❌ Push failed"
