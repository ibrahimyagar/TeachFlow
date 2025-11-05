# PowerShell script to push project to GitHub
$ErrorActionPreference = "Stop"

# Get the project directory
$projectDir = $PSScriptRoot

Write-Host "Project directory: $projectDir"

# Change to project directory
Set-Location $projectDir

# Check if .git exists, if not initialize
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..."
    git init
    git branch -M main
} else {
    Write-Host "Git repository already exists"
}

# Check if remote exists
$remoteExists = git remote | Select-String "origin"
if (-not $remoteExists) {
    Write-Host "Adding remote origin..."
    git remote add origin https://github.com/ibrahimyagar/TeachFlow.git
} else {
    Write-Host "Remote origin already exists"
    git remote set-url origin https://github.com/ibrahimyagar/TeachFlow.git
}

# Add all files
Write-Host "Adding files..."
git add .

# Commit
Write-Host "Committing changes..."
git commit -m "Initial commit: TeachFlow Classroom Management System"

# Push to GitHub
Write-Host "Pushing to GitHub..."
git push -u origin main

Write-Host "Done! Project pushed to GitHub successfully."

