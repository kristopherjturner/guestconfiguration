Configuration AllowSystemShutDownWithoutLogOn {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Shutdown_Allow_system_to_be_shut_down_without_having_to_log_on = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
AllowSystemShutDownWithoutLogOn -OutputPath 'C:\BaselineManagement\'