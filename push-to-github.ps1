## Step 1: Create the GitHub repo via API
## Run this in PowerShell — replace YOUR_TOKEN with your actual PAT

$token = "YOUR_TOKEN_HERE"
$headers = @{
    "Authorization" = "token $token"
    "Accept" = "application/vnd.github.v3+json"
}
$body = @{
    name = "devops-capstone-project"
    description = "Customer Accounts Microservice - DevOps Capstone"
    private = $false
    auto_init = $false
} | ConvertTo-Json

Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method POST -Headers $headers -Body $body -ContentType "application/json"

## Step 2: Add remote and push
git remote add origin https://github.com/Parthba06/devops-capstone-project.git
git branch -M main
git push -u origin main
