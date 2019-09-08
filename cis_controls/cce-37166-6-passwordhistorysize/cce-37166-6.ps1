Configuration PasswordHistorySize {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
        AccountPolicy 'SecuritySetting(INF): PasswordHistorySize'
        {
        Name = 'Enforce_password_history'
        Enforce_password_history = 24
        }
    }
}   

# Compile the configuration to create the MOF files
PasswordHistorySize -OutputPath 'C:\BaselineManagement\PasswordHistorySize'