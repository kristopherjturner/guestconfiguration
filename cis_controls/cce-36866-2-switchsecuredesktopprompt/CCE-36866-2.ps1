Configuration SwitchSecureDesktopPrompt {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Switch_to_the_secure_desktop_when_prompting_for_elevation = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
SwitchSecureDesktopPrompt -OutputPath 'C:\BaselineManagement\'