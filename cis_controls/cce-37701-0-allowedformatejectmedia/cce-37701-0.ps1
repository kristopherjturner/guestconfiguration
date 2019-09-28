Configuration AllowedFormatEjectMedia {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Devices_Allowed_to_format_and_eject_removable_media = 'Administrators'
    }
    }
}   

# Compile the configuration to create the MOF files
AllowedFormatEjectMedia -OutputPath 'C:\BaselineManagement\'