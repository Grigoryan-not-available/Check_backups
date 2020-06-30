$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "E:\Medoc\ZVIT_ARC\*.ZBF"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.5.103]"

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################ZVIT_ARC 192.168.0.103

$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ZVIT_ARC`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ZVIT_ARC`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}