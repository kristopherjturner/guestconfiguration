Configuration ClearTextPassword {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
            AccountPolicy 'SecuritySetting(INF): ClearTextPassword'
            {
              Name = 'Store_passwords_using_reversible_encryption'
              Store_passwords_using_reversible_encryption = 'Disabled'
        }
    }
}   

# Compile the configuration to create the MOF files
ClearTextPassword -OutputPath 'C:\BaselineManagement\ClearTextPassword'