Configuration DoNotStoreLANManagerHash {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_security_Do_not_store_LAN_Manager_hash_value_on_next_password_change = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DoNotStoreLANManagerHash -OutputPath 'C:\BaselineManagement\'