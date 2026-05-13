# Script de Deploy Automatico para SIPATSMA
# Uso: .\deploy.ps1 "Sua mensagem de commit"

param (
    [Parameter(Mandatory=$false)]
    [string]$Message = "Atualizacao automatica via Antigravity em $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
)

Write-Host "Iniciando processo de deploy..." -ForegroundColor Cyan

Write-Host "Adicionando arquivos..." -ForegroundColor Gray
git add .

Write-Host "Criando commit..." -ForegroundColor Gray
git commit -m "$Message"

Write-Host "Enviando para o GitHub..." -ForegroundColor Gray
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "Deploy concluido com sucesso! O Vercel iniciara a atualizacao em instantes." -ForegroundColor Green
} else {
    Write-Host "Erro ao realizar o deploy. Verifique as mensagens acima." -ForegroundColor Red
}
