$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\ar_cb_yesterday\*.BAK"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.0.103]"
$bool = 1

"" >> $destin
"`t`t`t`t`t`t`tMain (Not Share)" >> $destin
"" >> $destin

$host_pc >> $destin
"" >> $destin

##########################################ar_cb_yesterday 192.168.0.103

foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]ar_cb_yesterday`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]ar_cb_yesterday`t" >> $destin}

##########################################kicc_yesterday 192.168.0.103

$bool = 1
$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\kicc_yesterday\*.BAK"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]kicc_yesterday`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]kicc_yesterday`t" >> $destin}

##########################################cartoil 192.168.0.103

$bool = 1
$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\cartoil\*.BAK"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]cartoil `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]cartoil`t" >> $destin}

##########################################ar_cb_0202 192.168.0.103

$bool = 1
$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\ar_cb_0202\*.BAK"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]ar_cb_0202 `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]ar_cb_0202`t" >> $destin}

##########################################magazin 192.168.0.103

$bool = 1
$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\magazin\*.BAK"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]magazin `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]magazin`t" >> $destin}

##########################################b_studio 192.168.0.103

$bool = 1
$source = "M:\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Backup\b_studio\*.BAK"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]b_studio `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]b_studio`t" >> $destin}

