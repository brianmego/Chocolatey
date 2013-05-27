try {

    $langcode = (Get-Culture).Name # Get language and country code
    $langcode = "$langcode" -replace '-[a-z]{2}', '' # Remove country code
    #$langcode = "en" # langcode override for testing

    $languageAppendix = @{
        "fr" = "_French";
        "de" = "_German";
        "es" = "_Spanish";
    } # These 3 languages have a special installer. All the other languages have the standard installer named "SteamInstall.msi"

    $language = $languageAppendix[$langcode]
    $url = "http://cdn.steampowered.com/download/SteamInstall$language.msi"

    Install-ChocolateyPackage 'steam' 'msi' '/quiet' $url
    Write-ChocolateySuccess $name
} catch {
  Write-ChocolateyFailure $name $($_.Exception.Message)
  throw
}