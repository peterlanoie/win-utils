[CmdletBinding()]
param (
	[Parameter()][string]$remoteName = "origin"
)

Write-Host "Getting Git origin remote URL..."

$remoteUrl = (git remote get-url $remoteName)

if ($remoteUrl -ne $null) {
	Write-Host "Launching '$remoteUrl'"
#	Start-Process $remoteUrl
} else {
	Write-Host "!! Local folder doesn't appear to be in a Git repo or the remote name is bad. !!"
	Write-Host "Call this from a Git repo working folder."
	Write-Host "You can include a remote name as the first argument if you want. (Default is 'origin')"
}