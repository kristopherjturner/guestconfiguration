Configuration MachineInactivityLimit {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Interactive_logon_Machine_inactivity_limit = '900'
    }
    }
}   

# Compile the configuration to create the MOF files
MachineInactivityLimit -OutputPath 'C:\BaselineManagement\'