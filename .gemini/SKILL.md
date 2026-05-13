---
name: auto_deploy_sipatsma
description: Automates the process of adding, committing, and pushing changes to the SIPATSMA repository for Vercel deployment.
---

# Auto Deploy SIPATSMA

Esta skill automatiza o processo de subir as alterações para o Git, o que dispara automaticamente o deploy no Vercel.

## Procedimento

Sempre que uma tarefa de desenvolvimento for concluída com sucesso e validada, execute os seguintes passos:

1.  **Adicionar arquivos**: `git add .`
2.  **Commit**: `git commit -m "feat/fix: descrição da alteração"`
3.  **Push**: `git push origin main`

## Script de Automação

O script `deploy.ps1` na raiz do projeto pode ser usado para executar esses passos de uma vez.

```powershell
# deploy.ps1
param (
    [string]$Message = "Atualização automática via Antigravity"
)

git add .
git commit -m "$Message"
git push origin main
```
