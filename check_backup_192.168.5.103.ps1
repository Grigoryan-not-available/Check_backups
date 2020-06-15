$CurrentDate=Get-Date -Format "dd/MM/yyyy"
$source = "E:\Medoc\ZVIT_ARC\*.ZBF"
$destin = "\\192.168.0.86\backup\Backup_status\$CurrentDate.txt"
$host_pc = "[192.168.5.103]"
$bool = 1

"" >> $destin
$host_pc >> $destin
"" >> $destin

##########################################ZVIT_ARC 192.168.0.103

foreach ($item in Get-ChildItem -Path $source)
{
    $date_creation = $item.LastWriteTime.toString("dd/MM/yyyy")
    if($date_creation -eq $CurrentDate) {
        "[+]ZVIT_ARC `t`t| `t" + $item.LastWriteTime.toString("dd/MM/yyyy HH:mm:ss") + "`t | `t" + ($item.length/1MB) >> $destin
        $bool = 2
	    break
    }
}
if($bool -eq 1) {"[-]ZVIT_ARC`t" >> $destin}