$packageName = 'steam'
$installerType = 'EXE'
$url = 'http://media.steampowered.com/client/installer/SteamSetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw	
}