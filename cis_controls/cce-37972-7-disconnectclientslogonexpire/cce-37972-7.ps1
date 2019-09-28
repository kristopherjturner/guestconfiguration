Configuration DisconnectClientsLogonExpire {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Microsoft_network_server_Disconnect_clients_when_logon_hours_expire = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DisconnectClientsLogonExpire -OutputPath 'C:\BaselineManagement\'