Configuration PromptChangePasswordExpiration {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Interactive_logon_Prompt_user_to_change_password_before_expiration = '14'
    }
    }
}   

# Compile the configuration to create the MOF files
PromptChangePasswordExpiration -OutputPath 'C:\BaselineManagement\'