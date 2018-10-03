$packageName = 'sqlyog'
$installerType = 'EXE'
$silentArgs = '/S'

function Get-Uninstaller {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string] $Name
  )

  $local_key     = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
  $machine_key32 = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
  $machine_key64 = 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'

  @($local_key, $machine_key32, $machine_key64) `
    | Where-Object { Test-Path $_ } `
    | Get-ItemProperty `
    | Where-Object { $_.DisplayName -match $Name } `
    | Select-Object -ExpandProperty UninstallString
}

Uninstall-ChocolateyPackage $packageName $installerType $silentArgs (Get-Uninstaller -Name $packageName) 
