<#
.SYNOPSIS
	Launches the calculator application
#>

try {
	Start-Process ms-calculator:
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
