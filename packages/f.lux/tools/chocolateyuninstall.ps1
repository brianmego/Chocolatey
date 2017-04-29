$userProgs = [environment]::getfolderpath('Programs')
$commProgs = [environment]::getfolderpath('CommonPrograms')
Remove-Item -Path "$userProgs\f.lux.lnk" -ErrorAction SilentlyContinue
Remove-Item -Path "$commProgs\f.lux.lnk" -ErrorAction SilentlyContinue
Remove-Item -Path "$userProgs\Startup\f.lux.lnk" -ErrorAction SilentlyContinue
Remove-Item -Path "$commProgs\Startup\f.lux.lnk" -ErrorAction SilentlyContinue
