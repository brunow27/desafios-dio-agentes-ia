#Pegar o diretório atual
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#Arquivo de saída com todos sql
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Verifica se arquivo ja existe, se existir deleta
if (Test-Path $outputFile){
    Remove-item $outputFile
}

#Pega conteúdo dos arquivos
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

#Concatena Arquivos
foreach($file in $sqlFiles){
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append - FilePath $outputFile
}

Write-Host "Todos os arquivos foram combinados em $outputFile"