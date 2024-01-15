#!/bin/bash

# Base directory to search in
BASE_DIR="$HOME/Work/crisalix"

# Function to run a command in a specific folder
run_command() {
    local folder_name=$1
    shift
    local command=("$@")
    local folder_path="$BASE_DIR/$folder_name"

    echo "Checking for folder: $folder_path"

    if [ -d "$folder_path" ]; then
        echo "Found folder: $folder_path"
        cd "$folder_path"
        "${command[@]}"
    else
        echo "Folder not found: $folder_name"
    fi
}

# Define functions for each command
sso_start() {
    run_command "SSO" bundle exec rails s -p 3007
}

admin_start() {
    run_command "admin" bundle exec rails s -p 3000
}

estetix_start() {
    run_command "estetix" bundle exec rails s -p 3001
}

galderma_start() {
    run_command "galderma-webapp" bin/start
}

my_start() {
    run_command "my" bin/start
}

# Add similar functions here for other services if needed
