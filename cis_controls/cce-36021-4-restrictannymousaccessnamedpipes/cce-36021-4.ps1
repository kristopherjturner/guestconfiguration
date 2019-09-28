Configuration RestrictAnonymousAccessNamedPipes {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_access_Restrict_anonymous_access_to_Named_Pipes_and_Shares = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
RestrictAnonymousAccessNamedPipes -OutputPath 'C:\BaselineManagement\'