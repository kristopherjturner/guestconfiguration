Configuration EnableGuestAccount {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption 'SecuritySetting(INF): EnableGuestAccount'
    {
         Accounts_Guest_account_status = 'Disabled'
         Name = 'Accounts_Guest_account_status'

    }
    }
}   

# Compile the configuration to create the MOF files
EnableGuestAccount -OutputPath 'C:\BaselineManagement\'