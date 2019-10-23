Configuration BehaviorElevationPrompt {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Behavior_of_the_elevation_prompt_for_standard_users = 'Automatically deny elevation request'
    }
    }
}   

# Compile the configuration to create the MOF files
BehaviorElevationPrompt -OutputPath 'C:\BaselineManagement\'