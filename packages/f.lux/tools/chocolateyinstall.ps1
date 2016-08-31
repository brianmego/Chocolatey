$ErrorActionPreference = 'Stop'
 
$packageName = 'f.lux'
$url32       = 'http://stereopsis.com/flux/flux-setup.exe'
$checksum32  = '99F6A5FCF8C6789FF4D69A98B6CB1AF9296A76F210C01A6C8A0716EF79134F2F'
 
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
