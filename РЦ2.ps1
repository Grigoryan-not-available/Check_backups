$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "F:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\pf_Odesa\*.bak"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.1.201:6699 (RC2)]"
$bool = 1

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################pf_Odesa 192.168.1.201:6699 (аж2) 

foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]pf_Odesa `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]pf_Odesa`t" >> $destin}

##########################################Acronis_backup 192.168.1.201:6699 (аж2)

$bool = 1
$source = "F:\Acronis_backup\*.TIB"
foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.AddDays(+1).toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]Acronis_backup `t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]Acronis_backup" >> $destin}