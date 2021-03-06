#######################################################################################Disk C

###############################################################cp
$source = "\\192.168.0.86\backup_server\Гайова_4.62\system_C_full*.tib"
$destination = "\\192.168.0.86\reserve_backup_server\Гайова_4.62"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
cpi $file.FullName $destination

###############################################################delete everything except the last two copies
$source = "\\192.168.0.86\backup_server\Гайова_4.62\system_C_full*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[1].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item

###############################################################delete everything except the last ten copies
$source = "\\192.168.0.86\reserve_backup_server\Гайова_4.62\system_C_full*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[9].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item


#######################################################################################Disk D

###############################################################cp
$source = "\\192.168.0.86\backup_server\Гайова_4.62\data_d_(D)_full*.tib"
$destination = "\\192.168.0.86\reserve_backup_server\Гайова_4.62"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
cpi $file.FullName $destination

###############################################################delete everything except the last two copies
$source = "\\192.168.0.86\backup_server\Гайова_4.62\data_d_(D)_full*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[1].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item

###############################################################delete everything except the last ten copies
$source = "\\192.168.0.86\reserve_backup_server\Гайова_4.62\data_d_(D)_full*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[9].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item