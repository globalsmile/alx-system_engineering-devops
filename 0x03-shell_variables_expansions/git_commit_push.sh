#!/bin/bash

# Script to automate Git add, commit, and push

# Get the current working directory
repository_path=$(git rev-parse --show-toplevel)

# Set the branch name
branch="main"

# Read the commit message from user input
read -p "Enter the commit message: " commit_message

# Change to the repository directory
cd "$repository_path"

# Add all modified and new files
git add -A

# Commit changes with the specified message
git commit -m "$commit_message"

# Push changes to the remote repository
git push origin "$branch"

