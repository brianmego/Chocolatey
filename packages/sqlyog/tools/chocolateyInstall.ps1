$packageName = 'sqlyog'
$installerType = 'EXE'
$url = 'https://s3.amazonaws.com/SQLyog_Community/SQLyog+13.1.1/SQLyog-13.1.1-0.x86Community.exe'
$url64 = 'https://s3.amazonaws.com/SQLyog_Community/SQLyog+13.1.1/SQLyog-13.1.1-0.x64Community.exe'
$silentArgs = '/S'

Install-ChocolateyPackage $packageName $installerType $silentArgs $url $url64
