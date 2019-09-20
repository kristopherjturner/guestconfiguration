Configuration CreatePageFile {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Create_a_pagefile'
         {
              Policy = 'Create_a_pagefile'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

    }
}   

# Compile the configuration to create the MOF files
CreatePageFile -OutputPath 'C:\BaselineManagement\CreatePageFile'
