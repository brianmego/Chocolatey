$packageName = 'sqlyog'
$installerType = 'EXE'
$url = 'https://s3.amazonaws.com/SQLyog_Community/SQLyog+12.09/SQLyog-12.0.9-0.x86Community.exe'
$url64 = 'https://s3.amazonaws.com/SQLyog_Community/SQLyog+12.09/SQLyog-12.0.9-0.x64Community.exe'
$silentArgs = '/S'

Install-ChocolateyPackage $packageName $installerType $silentArgs $url $url64
