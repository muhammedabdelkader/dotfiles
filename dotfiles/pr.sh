#!/bin/bash
# Read the target branch from user input or default to "main"
# read -p "Enter the target branch (default is main): " target_branch
# target_branch=${target_branch:-main}

# Get the current branch name
current_branch=$(git rev-parse --abbrev-ref HEAD)
# Use the current branch as the target branch
target_branch=${current_branch}

# Get the commit messages from the current branch
commit_messages=$(git lg --oneline --no-merges ${target_branch} --pretty=format:"%s" )

# Replace |/ with a tab and | , and remove /  
commit_messages=$(echo -e "${commit_messages}" | sed 's/|/    /g' | sed 's/\// /g' | tr -s "\n")
 
# Create the PR description with commit messages
pr_description="**Changes in branch ${current_branch}:**\n\n${commit_messages}"

# Print the PR description or use it as needed
echo -e "${pr_description}"
