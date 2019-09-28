Configuration BlockMicrosoftAccounts {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Accounts_Block_Microsoft_accounts = 'This policy is disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
BlockMicrosoftAccounts -OutputPath 'C:\BaselineManagement\'