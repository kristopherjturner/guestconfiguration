Configuration MaximumMachineAccountPasswordAge {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Domain_member_Maximum_machine_account_password_age = '30' # 2.3.6.5
    }
    }
}   

# Compile the configuration to create the MOF files
MaximumMachineAccountPasswordAge -OutputPath 'C:\BaselineManagement\'