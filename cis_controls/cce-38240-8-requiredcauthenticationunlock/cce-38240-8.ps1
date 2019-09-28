Configuration RequireDCAuthenticationUnlock {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Interactive_logon_Require_Domain_Controller_authentication_to_unlock_workstation = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
RequireDCAuthenticationUnlock -OutputPath 'C:\BaselineManagement\'