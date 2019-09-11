Configuration MinimumPasswordAge {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         AccountPolicy 'SecuritySetting(INF): MinimumPasswordAge'
         {
              Minimum_Password_Age = 1
              Name = 'Minimum_Password_Age'

         }
    }
}   

# Compile the configuration to create the MOF files
MinimumPasswordAge -OutputPath 'C:\BaselineManagement\MinimumPasswordAge'