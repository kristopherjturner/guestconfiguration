Configuration LDAPClientSigningRequirements {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_security_LDAP_client_signing_requirements = 'Negotiate signing'
    }
    }
}   

# Compile the configuration to create the MOF files
LDAPClientSigningRequirements -OutputPath 'C:\BaselineManagement\'