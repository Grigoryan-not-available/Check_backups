$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "F:\Acronis_backup\*.TIB"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.1.201:6699 (RC2)]"

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################Acronis_backup 192.168.1.201:6699 (аж2)

$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]Acronis_backup`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]Acronis_backup`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################pf_Odesa 192.168.1.201:6699 (аж2) 

$source = "F:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\pf_Odesa\*.bak"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]pf_Odesa`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]pf_Odesa`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################cp_pf 192.168.1.201:6699 (RC2)

$source = "\\192.168.0.86\reserve_backup\RC_2\pf*.bak"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]cp_pf`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]cp_pf`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################Disk E 192.168.0.201

$host_pc = "[192.168.0.201]"
"" >> $destin
$host_pc >> $destin
"" >> $destin
$source = "\\192.168.0.86\backup_server\192.168.0.201\Disk E\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]Disk E`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]Disk E`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}


##########################################Disk C 192.168.0.201

$source = "\\192.168.0.86\backup_server\192.168.0.201\Disk  C\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]Disk C`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]Disk C`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}