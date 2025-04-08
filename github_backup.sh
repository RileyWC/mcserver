#!/bin/bash

# Configuration
GITHUB_USERNAME="RileyWC"           
GITHUB_REPO="mcserver"                            
FILE_PATH="/home/pihole/mcserver/."        # Replace with the full path to your file
BRANCH="main"                             
COMMIT_MESSAGE="Auto-upload backup $(date)"

# Change to the repository directory (make sure you have cloned the repo)
cd /home/pihole/mcserver

# Check if the repository is already cloned, else clone it
if [ ! -d ".git" ]; then
    git clone origin
    cd $GITHUB_REPO
fi

# Ensure we are on the correct branch
git checkout $BRANCH

# Copy the file to the repo (or overwrite if it exists)
cp $FILE_PATH .

# Add changes to git
git add .

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push changes to GitHub
git push origin main

# Print success message
echo "File uploaded to GitHub successfully!"
