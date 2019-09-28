Configuration PermissionsApplyAnonymousUsers {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_access_Let_Everyone_permissions_apply_to_anonymous_users = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
PermissionsApplyAnonymousUsers -OutputPath 'C:\BaselineManagement\'