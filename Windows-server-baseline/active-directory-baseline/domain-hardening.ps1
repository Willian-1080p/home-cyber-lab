<#
 Script de apoio para hardening em ambiente AD
 Não substitui GPO – apenas complementa
#>

Write-Host "[+] Forçando atualização de GPO"
gpupdate /force

Write-Host "[+] Habilitando auditoria avançada"
auditpol /set /subcategory:"Logon" /success:enable /failure:enable
auditpol /set /subcategory:"Account Lockout" /success:enable /failure:enable

