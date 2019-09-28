Configuration AnonymousEnumerationSAMShaes {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts_and_shares = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
AnonymousEnumerationSAMShaes -OutputPath 'C:\BaselineManagement\'