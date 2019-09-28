Configuration DoNotDisplayLastUserName {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Interactive_logon_Do_not_display_last_user_name = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DoNotDisplayLastUserName -OutputPath 'C:\BaselineManagement\'