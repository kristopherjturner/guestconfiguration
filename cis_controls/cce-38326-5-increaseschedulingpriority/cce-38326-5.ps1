Configuration IncreaseSchedulingPriority {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Increase_scheduling_priority'
         {
              Policy = 'Increase_scheduling_priority'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

    }
}   

# Compile the configuration to create the MOF files
IncreaseSchedulingPriority -OutputPath 'C:\BaselineManagement\'
