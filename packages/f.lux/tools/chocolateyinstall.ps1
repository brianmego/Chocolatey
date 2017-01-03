$ErrorActionPreference = 'Stop'
 
$packageName = 'f.lux'
$url32       = 'http://stereopsis.com/flux/flux-setup.exe'
$checksum32  = '2696C35394CA9125098458FC080461B6C841D6D8FD263B40270D21A8823C65B0'
 
$packageArgs = @{
  packageName            = $packageName
  fileType               = 'exe'
  url                    = $url32
  silentArgs             = '/S'
  checksum               = $checksum32
  checksumType           = 'sha256'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}
 
Install-ChocolateyPackage @packageArgs
