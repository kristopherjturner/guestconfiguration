#  Install supported modules
Install-Module az.resources, az.policyinsights, az.storage, guestconfiguration, gpregistrypolicyparser, securitypolicydsc, auditpolicydsc, baselinemanagement -scope currentuser -Repository psgallery -AllowClobber
Import-Module BaselineManagement
Install-Module -Name GuestConfigurationTroubleshooter


# Convert Security Baseline GPO's to DSC Configurations
ConvertFrom-GPO -Path '.\Windows 10 Version 1903 and Windows Server Version 1903 Security Baseline\GPOs\' -OutputConfigurationScript

#  https://docs.microsoft.com/en-us/azure/governance/policy/how-to/guest-configuration-create

#  Create Guest Configuration Package
#  

New-GuestConfigurationPackage `
-Name LockPagesInMemory `
-Configuration .\localhost.mof `
-Path .\ -Verbose `
| Test-GuestConfigurationPackage -Verbose

# Upload to Storage or use github
# Uploaded file to blob and get SAS uri
C:\GitHub\guestconfiguration\scripts\storageupload.ps1 -resourceGroup rfc_customguestconfig -storageAccountName guestconfiguration -storageContainerName content -filePath c:\git\policyfiles\Server2019Baseline\Server2019Baseline.zip -blobName Server2019Baseline.zip

#  Create new Guest Configuration Policy

New-GuestConfigurationPolicy `
    -ContentUri "https://guestconfiguration.blob.core.windows.net/content/MaximumPasswordAge.zip" `
    -DisplayName "CCE-37167-4 - Maximum Password Age." `
    -Description "Ensure Maximum Password Age is set to..." `
    -Path "C:\GitHub\guestconfiguration\cis_controls\cce-37167-4-maximumpasswordage\policyDefinitions" `
    -Platform "Windows" `
    -Version 1.0.0 `
    -Verbose

#  Publish Guest Configuration Policy
#  Before running make sure Display name on both audit and deploy are correct?  For instance, I change mine to add CIS after audit/deploy and bofore description.
Publish-GuestConfigurationPolicy -Path 'C:\GitHub\guestconfiguration\cis_controls\cce-37167-4-maximumpasswordage\policyDefinitions' -Verbose

Publish-GuestConfigurationPolicy -Path '\policyDefinitions' -Verbose
