$source = "F:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\pf_Odesa\*.BAK"
$destination = "\\192.168.0.86\reserve_backup\RC_2"
$file = Get-ChildItem -Path $source | Sort-Object LastWriteTime | Select-Object -Last 1
cpi $file.FullName $destination