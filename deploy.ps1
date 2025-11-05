# Git deployment script for TeachFlow
$ErrorActionPreference = "Stop"

# Get the script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

# Initialize git repository if not exists
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..."
    git init
}

# Add remote if not exists
$remoteUrl = "https://github.com/ibrahimyagar/TeachFlow.git"
$remoteExists = git remote | Select-String -Pattern "origin" -Quiet

if (-not $remoteExists) {
    Write-Host "Adding remote origin..."
    git remote add origin $remoteUrl
} else {
    Write-Host "Updating remote origin..."
    git remote set-url origin $remoteUrl
}

# Add all files
Write-Host "Adding files..."
git add .

# Commit changes
Write-Host "Committing changes..."
git commit -m "Initial commit: TeachFlow Classroom Management System"

# Push to GitHub
Write-Host "Pushing to GitHub..."
git branch -M main
git push -u origin main

Write-Host "Deployment completed successfully!"

