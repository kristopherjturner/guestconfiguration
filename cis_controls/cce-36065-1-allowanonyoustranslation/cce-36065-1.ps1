Configuration AllowAnonymousTranslation {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_access_Allow_anonymous_SID_Name_translation = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
AllowAnonymousTranslation -OutputPath 'C:\BaselineManagement\'