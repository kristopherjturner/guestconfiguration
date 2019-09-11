New-GuestConfigurationPackage -Name AuditWindowsService -Configuration .\DSCConfig\localhost.mof -Path .\package -Verbose | Test-GuestConfigurationPackage -Verbose

New-GuestConfigurationPackage `
-Name MinimumPasswordAge `
-Configuration C:\GitHub\guestconfiguration\cis_controls\cce-37073-4-minimumpasswordage\localhost.mof `
-Path C:\GitHub\guestconfiguration\cis_controls\cce-37073-4-minimumpasswordage\ -Verbose `
| Test-GuestConfigurationPackage -Verbose