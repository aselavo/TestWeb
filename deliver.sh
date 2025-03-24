#!/usr/bin/env bash

echo "Updating production branch"
git reset
git add ./public_html/
git commit -m "Prod update"
git push -u origin main:prod