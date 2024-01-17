#!/bin/bash

# Set start date
start_date="2023-12-12"
counter=0

# Initialize Git
git init
git remote add origin https://github.com/Satya-Dusanapudi/ShellScripting.git
git branch -M main

# Loop through all files in the folder
for file in $(ls); do
  if [ -f "$file" ]; then
    git add "$file"
    commit_date=$(date -d "$start_date +$counter days" "+%Y-%m-%dT10:00:00")

    GIT_AUTHOR_DATE="$commit_date" GIT_COMMITTER_DATE="$commit_date" git commit -m "Add $file"

    ((counter++))
  fi
done

# Final push to GitHub
git push -u origin main

