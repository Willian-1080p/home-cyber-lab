<#
 Detecção de atividades suspeitas no Windows
 Eventos analisados:
 4688 - Criação de processo
 4672 - Privilégios administrativos atribuídos
#>

$startTime = (Get-Date).AddMinutes(-15)

$processEvents = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id      = 4688
    StartTime = $startTime
}

foreach ($event in $processEvents) {
    $processName = $event.Properties[5].Value
    if ($processName -match "powershell|cmd|wmic|psexec") {
        Write-Host "[ALERTA] Processo suspeito detectado: $processName"
    }
}

$adminEvents = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id      = 4672
    StartTime = $startTime
}

foreach ($event in $adminEvents) {
    $user = $event.Properties[1].Value
    Write-Host "[INFO] Privilégio elevado atribuído ao usuário: $user"
}
