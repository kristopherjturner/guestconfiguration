param(
    $resourceGroup,
    $storageAccountName,
    $storageContainerName,
    $filePath,
    $blobName
)

# Get Storage Context
$Context = Get-AzStorageAccount -ResourceGroupName $resourceGroup `
    -Name $storageAccountName | `
    ForEach-Object { $_.Context }

# Upload file
Set-AzStorageBlobContent -Context $Context `
    -Container $storageContainerName `
    -File $filePath `
    -Blob $blobName

# Get url with SAS token
$StartTime = (Get-Date)
$ExpiryTime = $StartTime.AddYears('3')
$SAS = New-AzStorageBlobSASToken -Context $Context `
    -Container $storageContainerName `
    -Blob $blobName `
    -StartTime $StartTime `
    -ExpiryTime $ExpiryTime `
    -Permission rl `
    -FullUri

# Output
return $SAS
