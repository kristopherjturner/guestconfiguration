Configuration MinimumPasswordLength {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
AccountPolicy 'SecuritySetting(INF): MinimumPasswordLength'
         {
              Name = 'Minimum_Password_Length'
              Minimum_Password_Length = 14

         }
    }
}   

# Compile the configuration to create the MOF files
MinimumPasswordLength -OutputPath 'C:\BaselineManagement\MinimumPasswordLength'