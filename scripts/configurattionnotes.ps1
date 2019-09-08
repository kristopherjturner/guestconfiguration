#  Install supported modules
Install-Module az.resources, az.policyinsights, az.storage, guestconfiguration, gpregistrypolicyparser, securitypolicydsc, auditpolicydsc, baselinemanagement -scope currentuser -Repository psgallery -AllowClobber
Import-Module BaselineManagement
Install-Module -Name GuestConfigurationTroubleshooter


# Convert Security Baseline GPO's to DSC Configurations
ConvertFrom-GPO -Path '.\Windows 10 Version 1903 and Windows Server Version 1903 Security Baseline\GPOs\' -OutputConfigurationScript

#  https://docs.microsoft.com/en-us/azure/governance/policy/how-to/guest-configuration-create


New-GuestConfigurationPackage -Name PasswordHistorySize -Configuration C:\BaselineManagement\PasswordHistorySize\PasswordHistorySize.mof -DestinationPath C:\BaselineManagement\PasswordHistorySize\ -Verbose

#  Upload to Storage or use github
# Uploaded file to blob and get SAS uri
c:\git\policyfiles\storageupload.ps1 -resourceGroup rfc_customguestconfig -storageAccountName guestconfiguration -storageContainerName content -filePath c:\git\policyfiles\Server2019Baseline\Server2019Baseline.zip -blobName Server2019Baseline.zip


New-GuestConfigurationPolicy `
    -ContentUri "https://guestconfiguration.blob.core.windows.net/content/PasswordHistorySize.zip" `
    -DisplayName "CCE-37166-6 - Password History Size." `
    -Description "Ensure Enforce password history is set to..." `
    -DestinationPath "C:\BaselineManagement\PasswordHistorySize\policyDefinitions" `
    -Platform "Windows" `
    -Version 1.0.0 `
    -Verbose


Publish-GuestConfigurationPolicy -Path 'C:\BaselineManagement\PasswordHistorySize\policyDefinitions' -Verbose


