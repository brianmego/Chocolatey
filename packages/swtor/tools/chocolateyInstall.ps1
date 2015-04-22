#try { #error handling is only necessary if you need to do anything in addition to/instead of the main helpers
  # main helpers - these have error handling tucked into them so they become the only line of your script if that is all you need.
  # installer, will assert administrative rights
  Install-ChocolateyPackage 'swtor' 'exe' '/S' 'https://swtor-a.akamaihd.net/installer/SWTOR_setup.exe'
  