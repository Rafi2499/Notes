#!/bin/bash

# Delay to allow Wi-Fi to establish a connection after boot
sleep 10

# Get the path to the folder where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR" || exit

# Check if there are any changes to commit
if [ -n "$(git status --porcelain)" ]; then
    # Detect active branch name (main or master)
    BRANCH=$(git branch --show-current)

    git add -A
    git commit -m "Auto-update notes: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin "$BRANCH"
fi
