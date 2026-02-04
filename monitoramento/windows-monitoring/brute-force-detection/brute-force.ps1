<#
 Detecção de tentativas de brute-force no Windows
 Evento analisado: 4625 (Falha de logon)
#>

$threshold = 5
$timeWindowMinutes = 10

$events = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id      = 4625
    StartTime = (Get-Date).AddMinutes(-$timeWindowMinutes)
}

$grouped = $events | Group-Object -Property {
    $_.Properties[19].Value  # IP de origem
}

foreach ($group in $grouped) {
    if ($group.Count -ge $threshold -and $group.Name) {
        Write-Host "[ALERTA] Possível brute-force detectado!"
        Write-Host "IP de origem: $($group.Name)"
        Write-Host "Tentativas: $($group.Count)"
        Write-Host "-----------------------------"
    }
}

