$source = "D:\MSSQL_BAK\ARC\ar*.rar"
$destination = "\\192.168.0.86\reserve_backup\RC_1"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
cpi $file.FullName $destination