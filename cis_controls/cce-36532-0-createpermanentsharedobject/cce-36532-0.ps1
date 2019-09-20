Configuration CreatePermanentSharedObject {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Create_permanent_shared_objects'
         {
              Policy = 'Create_permanent_shared_objects'
              Force = $True
              Identity = @('')

         }

    }
}   

# Compile the configuration to create the MOF files
CreatePermanentSharedObject -OutputPath 'C:\BaselineManagement\CreatePermanentSharedObject'
