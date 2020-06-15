$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "\\192.168.0.86\backup_server\192.168.5.102\1c8_srvinfo\*.TIB"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.5.102]"
$bool = 1

"" >> $destin
"`t`t`t`t`t`t`tShare" >> $destin
"" >> $destin

$host_pc >> $destin
"" >> $destin

##########################################1c8_srvinfo 192.168.5.102

foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]1c8_srvinfo `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]1c8_srvinfo" >> $destin}

##########################################1CData 192.168.5.102

$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.5.102\1CData\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]1CData `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]1CData`t" >> $destin}

##########################################MSQQL_bak 192.168.5.102

$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.5.102\MSQQL_bak\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]MSQQL_bak `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]MSQQL_bak`t" >> $destin}

##########################################sql 192.168.5.102

$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.5.102\sql\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]sql `t`t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]sql`t" >> $destin}

##########################################system 192.168.5.102

$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.5.102\system\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]system `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	break
    }
}
if($bool -eq 1) {"[-]system" >> $destin}

##########################################system 192.168.0.103

$host_pc = "[192.168.0.103]"
$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.0.103\system\*.TIB"
"" >> $destin
$host_pc >> $destin
"" >> $destin
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]system `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	break
    }
}
if($bool -eq 1) {"[-]system" >> $destin}

##########################################mssql_bak 192.168.0.200

$host_pc = "[192.168.0.200]"
$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.0.200\mssql_bak\*.TIB"
"" >> $destin
$host_pc >> $destin
"" >> $destin
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]mssql_bak `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	break
    }
}
if($bool -eq 1) {"[-]mssql_bak`t" >> $destin}

##########################################Disk E 192.168.0.201

$host_pc = "[192.168.0.201]"
$bool = 1
"" >> $destin
$host_pc >> $destin
"" >> $destin
$source = "\\192.168.0.86\backup_server\192.168.0.201\Disk E\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]Disk E `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	break
    }
}
if($bool -eq 1) {"[-]Disk E`t" >> $destin}

##########################################Disk C 192.168.0.201

$host_pc = "[192.168.0.201]"
$bool = 1
$source = "\\192.168.0.86\backup_server\192.168.0.201\Disk  C\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]Disk C `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	break
    }
}
if($bool -eq 1) {"[-]Disk C`t" >> $destin}


"" >> $destin
"" >> $destin
"" >> $destin




							