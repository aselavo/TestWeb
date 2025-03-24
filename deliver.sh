#!/usr/bin/env bash

echo "Updating production branch"
git stash -u
git checkout prod

git rm -rf .
git checkout main -- public_html/

mv public_html/* .
mv public_html/.* .  # For hidden files (like .gitignore)

git add .
git commit -m "Prod update"

git push origin prod

git checkout main
git stash apply