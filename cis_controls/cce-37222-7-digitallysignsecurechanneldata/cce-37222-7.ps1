Configuration DigitallySignSecureChannelData {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Domain_member_Digitally_sign_secure_channel_data_when_possible = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DigitallySignSecureChannelData -OutputPath 'C:\BaselineManagement\'