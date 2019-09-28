Configuration DisableMachineAccountPasswordChanges {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Domain_member_Disable_machine_account_password_changes = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DisableMachineAccountPasswordChanges -OutputPath 'C:\BaselineManagement\'