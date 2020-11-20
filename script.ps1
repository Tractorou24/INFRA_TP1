#Auteur : INGREMEAU Fabian
#Date : 02/11/2020
#Résumé OS + Réseau + Disque / Ram

cls
Write-Output "Nom de l'ordinateur : $env:computername"
$OS = (Get-WMIObject win32_operatingsystem).name
$OS = $OS.split("|")[0]
Write-Output "OS : $OS"
$OSVersion = (Get-WMIObject win32_operatingsystem).version
Write-Output "OS Version : $OSVersion"
$dateTime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime 
Write-Output "Date et heure d'allumage : $dateTime"
$criteria = "Type='software' and IsAssigned=1 and IsHidden=0 and IsInstalled=0"
$searcher = (New-Object -COM Microsoft.Update.Session).CreateUpdateSearcher()
$updates = $searcher.Search($criteria).Updates
if ($updates.Count -ne 0) {
    $osUpdated = "OS à jour : False"
}
else {
    $osUpdated = "OS à jour : True)"
}
Write-Output "$osUpdated"

Write-Output " "

$totalram=[STRING]((Get-WmiObject -Class Win32_ComputerSystem ).TotalPhysicalMemory/1GB)
Write-Output "RAM"
Write-Output "Totale: $totalram Go"
$freeram = [STRING]((Get-CIMInstance Win32_OperatingSystem).FreePhysicalMemory/1MB)
Write-Output "Disponible : $freeram Go"
$usedram = ($totalram - $freeram)
Write-Output "Utilisé : $usedram Go"
Write-Output " "
Write-Output "DISQUE :"
$freedsk = [Math]::Round((Get-Volume -DriveLetter 'C').Size/1GB)
Write-Output "Disponible : $freedsk Go"
$useddsk = [Math]::Round((Get-Volume -DriveLetter 'C').SizeRemaining/1GB)
Write-Output "Utilisé : $useddsk Go"

Write-Output " "

$DownloadURL = "https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-win64.zip"
$DownloadLocation = "$($Env:ProgramData)\SpeedtestCLI"
try {
    $TestDownloadLocation = Test-Path $DownloadLocation
    if (!$TestDownloadLocation) {
        new-item $DownloadLocation -ItemType Directory -force
        Invoke-WebRequest -Uri $DownloadURL -OutFile "$($DownloadLocation)\speedtest.zip"
        Expand-Archive "$($DownloadLocation)\speedtest.zip" -DestinationPath $DownloadLocation -Force
    } 
}
catch {  
    write-host "The download and extraction of SpeedtestCLI failed. Error: $($_.Exception.Message)"
    exit 1
}
$SpeedtestResults = & "$($DownloadLocation)\speedtest.exe" --format=json --accept-license --accept-gdpr
$SpeedtestResults = $SpeedtestResults | ConvertFrom-Json

$ip = (Test-Connection -ComputerName $env:computername -count 1).IPV4Address.ipaddressTOstring
Write-Output "Ip principale : $ip"
$connection = (Test-Connection -ComputerName "8.8.8.8" -Count 4  | measure-Object -Property ResponseTime -Average).average
Write-Output " - Ping vers 8.8.8.8 : $connection ms"
$downloadSpeed = [math]::Round($SpeedtestResults.download.bandwidth / 1000000 * 8, 2)
$uploadSpeed = [math]::Round($SpeedtestResults.upload.bandwidth / 1000000 * 8, 2)
Write-Output " - Download Speed : $downloadSpeed Mbit/s"
Write-Output " - Upload Speed : $uploadSpeed Mbit/s"

Write-Output " "

$users = (Get-WmiObject Win32_UserAccount).Name 
Write-Output "Liste des utilisateurs : $users"
