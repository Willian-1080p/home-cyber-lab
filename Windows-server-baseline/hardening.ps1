
---

# 🔧 `hardening.ps1` — Automação PowerShell

```powershell
<#
 Script: hardening.ps1
 Projeto: Windows Hardening Baseline – WillSecLab
 Objetivo: Aplicar configurações básicas de hardening no Windows
 Requisitos: Execução como Administrador
#>

Write-Host "[+] Habilitando Firewall do Windows"
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

Write-Host "[+] Configurando Firewall (bloqueio padrão de entrada)"
Set-NetFirewallProfile `
  -Profile Domain,Public,Private `
  -DefaultInboundAction Block `
  -DefaultOutboundAction Allow

Write-Host "[+] Habilitando proteções do Windows Defender"
Set-MpPreference -DisableRealtimeMonitoring $false
Set-MpPreference -EnableControlledFolderAccess Enabled
Set-MpPreference -PUAProtection Enabled

Write-Host "[+] Fortalecendo políticas de senha"
net accounts /minpwlen:12
net accounts /maxpwage:60
net accounts /lockoutthreshold:5

Write-Host "[+] Desabilitando serviços potencialmente perigosos"
$services = @(
  "RemoteRegistry",
  "XboxGipSvc"
)

foreach ($svc in $services) {
    Get-Service -Name $svc -ErrorAction SilentlyContinue | `
    Set-Service -StartupType Disabled
}

Write-Host "[✓] Hardening básico do Windows concluído"

