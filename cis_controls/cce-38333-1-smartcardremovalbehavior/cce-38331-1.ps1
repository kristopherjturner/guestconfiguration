Configuration SmartCardRemovalBehavior {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Interactive_logon_Smart_card_removal_behavior = 'Lock Workstation'
    }
    }
}   

# Compile the configuration to create the MOF files
SmartCardRemovalBehavior -OutputPath 'C:\BaselineManagement\'