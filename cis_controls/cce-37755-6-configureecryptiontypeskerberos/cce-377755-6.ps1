Configuration ConfigureEncryptionTypesKerberos {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Network_security_Configure_encryption_types_allowed_for_Kerberos = 'RC4_HMAC_MD5','AES128_HMAC_SHA1','AES256_HMAC_SHA1','DES_CBC_CRC','DES_CBC_MD5'
    }
    }
}   

# Compile the configuration to create the MOF files
ConfigureEncryptionTypesKerberos -OutputPath 'C:\BaselineManagement\'