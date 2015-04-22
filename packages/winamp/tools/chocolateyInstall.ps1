#try { #error handling is only necessary if you need to do anything in addition to/instead of the main helpers
  # main helpers - these have error handling tucked into them so they become the only line of your script if that is all you need.
  # installer, will assert administrative rights
  Install-ChocolateyPackage 'winamp' 'exe' '/S' 'http://download.nullsoft.com/winamp/client/winamp564_full_emusic-7plus_en-us.exe'
  