#!/usr/bin/env bash

set -euo pipefail

# Verify that a repository URL argument was provided
if [ -z "${1:-}" ]; then
  echo "Error: Missing GitHub repository URL."
  echo "Usage: $0 <github-repo-url>"
  exit 1
fi

REPO_URL="$1"

# Initialize git repository with 'main' as default branch
git init -b main

# Stage and commit files
git add .
git commit -m "Initial commit: project structure and master template"

# Attach remote origin
git remote add origin "$REPO_URL"

# Push to GitHub
git push -u origin main