$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "\\192.168.0.86\backup_server\192.168.0.103\system\*.TIB"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.0.103]"

"" >> $destin
"`t`t`t`t`t`t`tMain (Not Share)" >> $destin
"" >> $destin

$host_pc >> $destin
"" >> $destin

##########################################system 192.168.0.103

$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]system`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]system`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################ar_cb_yesterday 192.168.0.103

$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\ar_cb_yesterday\*.BAK"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ar_cb_yesterday`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ar_cb_yesterday`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################kicc_yesterday 192.168.0.103

$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\kicc_yesterday\*.BAK"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]kicc_yesterday`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]kicc_yesterday`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################cartoil 192.168.0.103

$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\cartoil\*.BAK"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]cartoil`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]cartoil`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################ar_cb_0202 192.168.0.103

$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\ar_cb_0202\*.BAK"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]ar_cb_0202`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]ar_cb_0202`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################magazin 192.168.0.103

$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\magazin\*.BAK"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]magazin`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]magazin`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}

##########################################b_studio 192.168.0.103

$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\magazin\*.BAK"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
$date_creation = $file.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
if($date_creation -eq $CurrentDate) {
    "[+]b_studio`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}
else{
    "[-]b_studio`t`t| `t" + $file.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($file.length/1MB) >> $destin
}