Configuration StrengthenDefaultPermissions {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        System_objects_Strengthen_default_permissions_of_internal_system_objects_eg_Symbolic_Links = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
StrengthenDefaultPermissions -OutputPath 'C:\BaselineManagement\'