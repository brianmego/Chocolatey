$packageName = 'sqlyog'
$installerType = 'EXE'
$url = 'https://s3.amazonaws.com/SQLyog_Community/SQLyog+12.08/SQLyog-12.0.8-0.x86Community.exe'
$url64 = 'https://s3.amazonaws.com/SQLyog_Community/SQLyog+12.08/SQLyog-12.0.8-0.x64Community.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	Install-ChocolateyPackage $packageName $installerType $silentArgs $url $url64 -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw	
}
