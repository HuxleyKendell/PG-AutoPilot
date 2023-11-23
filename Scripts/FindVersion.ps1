$key = "FL01970B114299DA8740C788EDEF20F313DD5668224A2ADB3E5F12AB45AC24FFFDE113130C2B98279849201CA8D1F77605B71CC2126414DD3C6A8BC32803CE9B4B78FEF7F14CC2346F37DD5472CFB6C8527B820F2851D9EFF52AB009481B09050D4ADCF8F5C19651F80C6E031E9D778929090EA7348A40D079E28776D8ADB93E9E11B4ADD3A129CA8AB937BBFE8468FC0C346044E3A52A0927FE5CA55D145563A49F3F006EF7CA393DCEFE92D659746023BAF8E74CB81F490B024516EED683C87290EE1206E0F8D5154DF39782C416D329067515C2FE4DF6EB57B0B39FA84B48952527AF83BD9D8294472E47D2F7818F619ED75E5D7644D8FB74C0219918DBF617C9"

$cmdOutput = flyway -licenseKey="$key" -v -outputType=json
$cmdOutput | Set-Content -Path C:\Users\redgate\Desktop\JSON\example.json

$versionJson = $cmdOutput | ConvertFrom-Json

# Get the value of the "edition" property
$edition = $versionJson.edition

# Print the edition value
Write-Host "Edition: $edition"

# Assign a variable based on the edition value
if ($edition -eq 'TIER1') {
    $editionCode = 1
} elseif ($edition -eq 'TIER2') {
    $editionCode = 2
} elseif ($edition -eq 'TIER3') {
    $editionCode = 3
} else {
    # Default value if edition is not recognized
    $editionCode = 0
}

Write-Host "Edition Code: $editionCode"


