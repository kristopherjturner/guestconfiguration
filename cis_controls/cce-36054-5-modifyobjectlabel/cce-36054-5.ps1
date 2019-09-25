Configuration ModifyObjectLabel {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Modify_an_object_label'
         {
              Policy = 'Modify_an_object_label'
              Force = $True
              Identity = @('')

         }

    }
}   

# Compile the configuration to create the MOF files
ModifyObjectLabel -OutputPath 'C:\BaselineManagement\'
