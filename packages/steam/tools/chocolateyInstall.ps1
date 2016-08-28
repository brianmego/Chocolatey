$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$setupFile = "SteamSetup.exe"

$packageArgs = @{
  packageName   = 'steam'
  unzipLocation = "$unzipLocation"
  fileType      = 'exe'
  url           = "$(Join-Path $unzipLocation $setupFile)"
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'steam*'
}

Install-ChocolateyPackage @packageArgs