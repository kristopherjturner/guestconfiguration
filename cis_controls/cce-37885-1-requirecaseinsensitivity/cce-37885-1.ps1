Configuration RequireCaseInsensitivity {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        System_objects_Require_case_insensitivity_for_non_Windows_subsystems = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
RequireCaseInsensitivity -OutputPath 'C:\BaselineManagement\'