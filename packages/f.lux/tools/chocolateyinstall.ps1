$ErrorActionPreference = 'Stop'
 
$packageName = 'f.lux'
$url32       = 'http://stereopsis.com/flux/flux-setup.exe'
$checksum32  = '2696C35394CA9125098458FC080461B6C841D6D8FD263B40270D21A8823C65B0'
 
$packageArgs = @{
  packageName            = $packageName
  url                    = $url32
  checksum               = $checksum32
  checksumType           = 'sha256'
  UnzipLocation 	 = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
 
Install-ChocolateyZipPackage @packageArgs

# Start menu shortcuts
$ProgsFolder = [environment]::getfolderpath('Programs')
If ( Test-ProcessAdminRights ) { $ProgsFolder = [environment]::getfolderpath('CommonPrograms') }

Install-ChocolateyShortcut -shortcutFilePath "$ProgsFolder\f.lux.lnk" `
	-targetPath "$ENV:ChocolateyInstall\lib\$packageName\tools\flux.exe" `
	-WorkingDirectory "$ENV:ChocolateyInstall\lib\$packageName\tools\runtime"

Install-ChocolateyShortcut -shortcutFilePath "$ProgsFolder\Startup\f.lux.lnk" `
	-targetPath "$ENV:ChocolateyInstall\lib\$packageName\tools\flux.exe" `
	-WorkingDirectory "$ENV:ChocolateyInstall\lib\$packageName\tools\runtime" `
	-Arguments "/noshow"
