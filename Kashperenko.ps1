#######################################################################################Disk C

###############################################################cp
$source = "\\192.168.0.86\backup_server\Кашперенко\Диск_C*.tib"
$destination = "\\192.168.0.86\reserve_backup_server\Кашперенко"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
cpi $file.FullName $destination

###############################################################delete everything except the last two copies
$source = "\\192.168.0.86\backup_server\Кашперенко\Диск_C*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[1].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item

###############################################################delete everything except the last ten copies
$source = "\\192.168.0.86\reserve_backup_server\Кашперенко\Диск_C*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[9].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item


#######################################################################################Disk D

###############################################################cp
$source = "\\192.168.0.86\backup_server\Кашперенко\Диск_D*.tib"
$destination = "\\192.168.0.86\reserve_backup_server\Кашперенко"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
cpi $file.FullName $destination

###############################################################delete everything except the last two copies
$source = "\\192.168.0.86\backup_server\Кашперенко\Диск_D*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[1].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item

###############################################################delete everything except the last ten copies
$source = "\\192.168.0.86\reserve_backup_server\Кашперенко\Диск_D*.tib"
$files = Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[9].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item