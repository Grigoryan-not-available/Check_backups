$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "D:\backup\*.TIB"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.1.201:6698 (RC1)]"
$bool = 1

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################Acronis_backup 192.168.1.201:6698 (RC1)

$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]Acronis_backup`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]Acronis_backup`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################ar_rc1 192.168.1.201:6698 (RC1) 

$source = "D:\MSSQL_BAK\ARC\*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ar_rc1`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ar_rc1`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################cp_ar_rc1 192.168.1.201:6698 (RC1)

$source = "\\192.168.0.86\reserve_backup\RC_1\*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]cp_ar_rc1`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]cp_ar_rc1`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}