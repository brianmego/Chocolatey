$packageArgs = @{
  packageName            = 'f.lux'
  url                    = 'http://stereopsis.com/flux/flux-setup.exe'
  checksum               = '99F6A5FCF8C6789FF4D69A98B6CB1AF9296A76F210C01A6C8A0716EF79134F2F'
  checksumType           = 'sha256'
  UnzipLocation 	 = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
 
Install-ChocolateyZipPackage @packageArgs
