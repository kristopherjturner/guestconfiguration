Configuration AllowPKU2UAuthenticationRequest {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_security_Allow_PKU2U_authentication_requests_to_this_computer_to_use_online_identities = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
AllowPKU2UAuthenticationRequest -OutputPath 'C:\BaselineManagement\'