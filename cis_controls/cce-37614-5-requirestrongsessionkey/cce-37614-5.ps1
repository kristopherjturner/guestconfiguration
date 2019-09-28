Configuration RequireStrongSessionKey {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Domain_member_Require_strong_Windows_2000_or_later_session_key = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
RequireStrongSessionKey -OutputPath 'C:\BaselineManagement\'