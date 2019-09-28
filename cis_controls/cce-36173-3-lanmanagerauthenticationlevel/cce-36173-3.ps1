Configuration LANManagerAuthenticationLevel {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_security_LAN_Manager_authentication_level = 'Send NTLMv2 responses only. Refuse LM & NTLM'
    }
    }
}   

# Compile the configuration to create the MOF files
LANManagerAuthenticationLevel -OutputPath 'C:\BaselineManagement\'