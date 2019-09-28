Configuration IdleTimeSuspendingSession {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Microsoft_network_server_Amount_of_idle_time_required_before_suspending_session = '15'
    }
    }
}   

# Compile the configuration to create the MOF files
IdleTimeSuspendingSession -OutputPath 'C:\BaselineManagement\'