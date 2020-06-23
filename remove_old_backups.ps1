$source = "Z:\test\*.TIB"
$files=Get-ChildItem -Path $source | sort -Descending LastWriteTime
$date = $files[2].LastWriteTime
$files | Where-Object {$_.LastWriteTime -lt $date} | Remove-Item