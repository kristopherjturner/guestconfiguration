Configuration MaximumPasswordAge {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

    Node localhost{
        AccountPolicy 'SecuritySetting(INF): MaximumPasswordAge'
        {
            Name = 'Maximum_Password_Age'
            Maximum_Password_Age = 60

        }
    }
}   

# Compile the configuration to create the MOF files
MaximumPasswordAge -OutputPath 'C:\GitHub\guestconfiguration\cis_controls\cce-37167-4-maximumpasswordage'