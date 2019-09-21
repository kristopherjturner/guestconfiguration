New-GuestConfigurationPackage -Name AuditWindowsService -Configuration .\DSCConfig\localhost.mof -Path .\package -Verbose | Test-GuestConfigurationPackage -Verbose



New-GuestConfigurationPackage `
-Name LockPagesInMemory `
-Configuration .\localhost.mof `
-Path .\ -Verbose `
| Test-GuestConfigurationPackage -Verbose