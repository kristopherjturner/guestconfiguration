Configuration DigitallyEncryptSecureChannelData {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
    Domain_member_Digitally_encrypt_or_sign_secure_channel_data_always = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DigitallyEncryptSecureChannelData -OutputPath 'C:\BaselineManagement\'