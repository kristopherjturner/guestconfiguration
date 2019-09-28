Configuration SharingSecurityModelLocalAccounts {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_access_Shares_that_can_be_accessed_anonymously = ''
    }
    }
}   

# Compile the configuration to create the MOF files
SharingSecurityModelLocalAccounts -OutputPath 'C:\BaselineManagement\'