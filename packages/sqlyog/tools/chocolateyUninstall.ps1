$packageName = 'sqlyog'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	$uninstaller = Get-ChildItem HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ | %{Get-ItemProperty $_.pspath} | ?{$_.DisplayName -match 'SQLyog'} | select -first 1 -ExpandProperty UninstallString
	Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $uninstaller -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
}
