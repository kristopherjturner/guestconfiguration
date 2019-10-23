Configuration ElevateUIAccessApplicationsSecure {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Only_elevate_UIAccess_applications_that_are_installed_in_secure_locations = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
ElevateUIAccessApplicationsSecure -OutputPath 'C:\BaselineManagement\'