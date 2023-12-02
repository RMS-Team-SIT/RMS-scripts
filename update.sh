#!/bin/bash

# List of GitHub repositories
repos=(
    "git@github.com:senior-project-it/RMS-db.git"
    "git@github.com:senior-project-it/RMS-api.git"
    "git@github.com:senior-project-it/RMS-client.git"
    "git@github.com:senior-project-it/RMS-compose.git"
    "git@github.com:senior-project-it/RMS-scripts.git"
)

# Directory to clone repositories into
base_dir="../"

# Iterate over the repositories and pull updates
for repo in "${repos[@]}"; do
    # Extract the repository name from the URL
    repo_name=$(basename "$repo" .git)

    # Check if the repository already exists, if not, clone it
    if [ ! -d "$base_dir/$repo_name" ]; then
        git clone "$repo" "$base_dir/$repo_name"
    else
        # If the repository exists, pull updates
        cd "$base_dir/$repo_name" || exit
        git pull
        cd - || exit
    fi
done
