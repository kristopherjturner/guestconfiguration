Configuration AllowUIAccessApplications {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Allow_UIAccess_applications_to_prompt_for_elevation_without_using_the_secure_desktop = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
AllowUIAccessApplications -OutputPath 'C:\BaselineManagement\'