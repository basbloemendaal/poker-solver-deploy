Write-Host "Updating backend..."
Set-Location -Path ".\poker-solver-backend"
git pull origin main

Write-Host "Updating frontend..."
Set-Location -Path "..\poker-solver-frontend"
git pull origin main

Write-Host "Rebuilding and restarting Docker containers..."
Set-Location -Path ".."
docker-compose up --build -d

Write-Host "Update complete!"
