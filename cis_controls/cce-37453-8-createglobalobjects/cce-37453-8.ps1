Configuration CreateGlobalObjects {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Create_global_objects'
         {
              Policy = 'Create_global_objects'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-6', '*S-1-5-32-544')

         }

    }
}   

# Compile the configuration to create the MOF files
CreateGlobalObjects -OutputPath 'C:\BaselineManagement\CreateGlobalObjects'
