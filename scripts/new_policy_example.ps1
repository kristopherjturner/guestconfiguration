$PolicyParameterInfo = @(
    @{
        Name = 'ServiceName'                                            # Policy parameter name (mandatory)
        DisplayName = 'windows service name.'                           # Policy parameter display name (mandatory)
        Description = "Name of the windows service to be audited."      # Policy parameter description (optional)
        ResourceType = "Service"                                        # DSC configuration resource type (mandatory)
        ResourceId = 'windowsService'                                   # DSC configuration resource property name (mandatory)
        ResourcePropertyName = "Name"                                   # DSC configuration resource property name (mandatory)
        DefaultValue = 'winrm'                                          # Policy parameter default value (optional)
        AllowedValues = @('BDESVC','TermService','wuauserv','winrm')    # Policy parameter allowed values (optional)
    }
)

New-GuestConfigurationPolicy
    -ContentUri 'https://storageaccountname.blob.core.windows.net/packages/AuditBitLocker.zip?st=2019-07-01T00%3A00%3A00Z&se=2024-07-01T00%3A00%3A00Z&sp=rl&sv=2018-03-28&sr=b&sig=JdUf4nOCo8fvuflOoX%2FnGo4sXqVfP5BYXHzTl3%2BovJo%3D' `
    -DisplayName 'Audit Windows Service.' `
    -Description 'Audit if a Windows Service is not enabled on Windows machine.' `
    -Path '.\policyDefinitions' `
    -Parameters $PolicyParameterInfo `
    -Platform 'Windows' `
    -Version 1.2.3.4 `
    -Verbose

###  My examples below

New-GuestConfigurationPolicy `
    -ContentUri "https://guestconfiguration.blob.core.windows.net/content/ChangeSystemTime.zip" `
    -DisplayName "CCE-CCE-37452-0 -CIS - Change the System Time." `
    -Description "This policy setting determines which users and groups can change the time and date on the internal clock of the computers in your environment." `
    -Path ".\policyDefinitions" `
    -Platform "Windows" `
    -Version 1.0.0 `
    -Verbose