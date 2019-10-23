Configuration DetectApplicationInstallations {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Detect_application_installations_and_prompt_for_elevation = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DetectApplicationInstallations -OutputPath 'C:\BaselineManagement\'