# Deploy to GitHub Pages (Manual)
# Jalankan script ini dari folder project

Write-Host "=== Deploy to GitHub Pages ===" -ForegroundColor Cyan

# 1. Build
Write-Host "`n[1/3] Building project..." -ForegroundColor Yellow
npm run build

if ($LASTEXITCODE -ne 0) {
    Write-Host "Build gagal!" -ForegroundColor Red
    exit 1
}

# 2. Push dist/ ke branch gh-pages
Write-Host "`n[2/3] Pushing to gh-pages branch..." -ForegroundColor Yellow
cd dist
git init
git add .
git commit -m "Deploy to GitHub Pages"
git branch -M gh-pages
git remote add origin https://github.com/USERNAME/REPO.git  # Ganti dengan URL repo kamu
git push -f origin gh-pages
cd ..

Write-Host "`n=== Deploy selesai! ===" -ForegroundColor Green