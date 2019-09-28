Configuration SendUnencryptedPasswordSMBServers {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Microsoft_network_client_Send_unencrypted_password_to_third_party_SMB_servers = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
SendUnencryptedPasswordSMBServers -OutputPath 'C:\BaselineManagement\'