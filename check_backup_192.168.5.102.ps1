$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "\\192.168.0.86\backup_server\192.168.5.102\1CData\*.TIB"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.5.102]"

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################1CData 192.168.5.102

$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]1CData`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]1CData`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################sql 192.168.5.102

$source = "\\192.168.0.86\backup_server\192.168.5.102\sql\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]sql`t`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]sql`t`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################MSQQL_bak 192.168.5.102

$source = "\\192.168.0.86\backup_server\192.168.5.102\MSQQL_bak\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]MSQQL_bak`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]MSQQL_bak`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################1c8_srvinfo 192.168.5.102

$source = "\\192.168.0.86\backup_server\192.168.5.102\1c8_srvinfo\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]1c8_srvinfo`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]1c8_srvinfo`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################system 192.168.5.102

$source = "\\192.168.0.86\backup_server\192.168.5.102\system\*.TIB"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]system`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]system`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

"" >> $destin
"Folder MSSQL_BAK\ARC" >> $destin
"" >> $destin

##########################################ar_cb 192.168.5.102

$source = "E:\MSSQL_BAK\ARC\ar_cb*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ar_cb`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ar_cb`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################pub_centr 192.168.5.102

$source = "E:\MSSQL_BAK\ARC\pub_centr*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]pub_centr`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]pub_centr`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################pub_fr 192.168.5.102

$source = "E:\MSSQL_BAK\ARC\pub_fr*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]pub_fr `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]pub_fr `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################kicc 192.168.5.102

$source = "E:\MSSQL_BAK\ARC\kicc*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]kicc `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]kicc `t`t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################ukr_bench 192.168.5.102

$source = "E:\MSSQL_BAK\ARC\ukr_bench*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ukr_bench `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ukr_bench `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################cartoil_group 192.168.5.102

$source = "E:\MSSQL_BAK\ARC\cartoil_group*.rar"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]cartoil_group `t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]cartoil_group `t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}


"" >> $destin
"Folder 1C_82_Backup" >> $destin
"" >> $destin

##########################################agro-ross 192.168.5.102

$source = "E:\1C_82_Backup\agro-ross*.dt"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]agro-ross `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]agro-ross `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################ar_cb_yesterday 192.168.5.102

$source = "E:\1C_82_Backup\ar_cb_yesterday*.dt"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ar_cb_yesterday `t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ar_cb_yesterday `t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################cartoil_group 192.168.5.102

$source = "E:\1C_82_Backup\cartoil_group*.dt"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]cartoil_group `t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]cartoil_group `t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################kicc 192.168.5.102

$source = "E:\1C_82_Backup\cartoil_group*.dt"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]kicc `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]kicc `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################ukr_bench 192.168.5.102

$source = "E:\1C_82_Backup\ukr_bench*.dt"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.ToString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ukr_bench `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ukr_bench `t`t| `t" + $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
