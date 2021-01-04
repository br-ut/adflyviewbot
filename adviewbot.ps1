#	Name - adflyviewbot
#	Author - br-ut
#	Date - 2021-01-04

$IE = new-object -ComObject "InternetExplorer.Application"
$urls= gc "C:\Users\brut-pc\Documents\adflyviewbot\urls.txt"
$count=1
foreach ($url in $urls){
    if ($count -eq 1){
        $IE.navigate($url,1)
    }
    else{
        $IE.navigate($url,2048)
    }
    $count++
}
sleep 60
taskkill /F /IM iexplore.exe
./adviewbot.ps1