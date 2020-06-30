$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "F:\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\pf\*.bak"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[PF]"

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################pf [PF]

$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]PF`t`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]PF`t`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################cp_pf_to_192.168.0.86 [PF]

$source = "\\192.168.0.86\reserve_backup\PF\*.bak"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]pf_to_192.168.0.86`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]pf_to_192.168.0.86`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

$host_pc = "[192.168.0.200]"
"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################mssql_bak 192.168.0.200

$source = "\\192.168.0.86\backup_server\192.168.0.200\mssql_bak\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]mssql_bak`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]mssql_bak`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}