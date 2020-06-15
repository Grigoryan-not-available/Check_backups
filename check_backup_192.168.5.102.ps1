$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "E:\1C_82_Backup\agro-ross*.dt"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.5.102]"
$bool = 1

"" >> $destin
$host_pc >> $destin
"" >> $destin
"Folder 1C_82_Backup" >> $destin
"" >> $destin

##########################################agro-ross 192.168.5.102

foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t agro-ross | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  agro-ross" >> $destin}

##########################################ar_cb_yesterday 192.168.5.102

$source = "E:\1C_82_Backup\ar_cb_yesterday*.dt"
$bool = 1
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t ar_cb_yesterday `t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  ar_cb_yesterday`t" >> $destin}

##########################################cartoil_group 192.168.5.102

$bool = 1
$source = "E:\1C_82_Backup\cartoil_group*.dt"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t cartoil_group | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  cartoil_group" >> $destin}

##########################################kicc 192.168.5.102

$bool = 1
$source = "E:\1C_82_Backup\kicc*.dt"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t kicc | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  kicc" >> $destin}

##########################################mariya 192.168.5.102

$bool = 1
$source = "E:\1C_82_Backup\mariya*.dt"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t mariya | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  mariya" >> $destin}

##########################################ukr_bench 192.168.5.102

$bool = 1
$source = "E:\1C_82_Backup\ukr_bench*.dt"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t ukr_bench | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  ukr_bench" >> $destin}

"" >> $destin
"Folder MSSQL_BAK\ARC" >> $destin
"" >> $destin

##########################################ar_cb 192.168.5.102

$bool = 1
$source = "E:\MSSQL_BAK\ARC\ar_cb*.rar"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t ar_cb | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  ar_cb" >> $destin}

##########################################pub_centr 192.168.5.102

$bool = 1
$source = "E:\MSSQL_BAK\ARC\pub_centr*.rar"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t pub_centr | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  pub_centr" >> $destin}

##########################################pub_fr 192.168.5.102

$bool = 1
$source = "E:\MSSQL_BAK\ARC\pub_fr*.rar"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t pub_fr | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  pub_fr" >> $destin}

##########################################kicc 192.168.5.102

$bool = 1
$source = "E:\MSSQL_BAK\ARC\kicc*.rar"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t kicc | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  kicc" >> $destin}

##########################################ukr_bench 192.168.5.102

$bool = 1
$source = "E:\MSSQL_BAK\ARC\ukr_bench*.rar"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t ukr_bench | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  ukr_bench" >> $destin}

##########################################cartoil_group 192.168.5.102

$bool = 1
$source = "E:\MSSQL_BAK\ARC\cartoil_group*.rar"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]`t cartoil_group | `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]`t" + $host_pc + "`t |  cartoil_group" >> $destin}







