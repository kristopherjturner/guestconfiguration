Configuration PerformVolumeMaintenanceTasks {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Perform_volume_maintenance_tasks'
         {
              Policy = 'Perform_volume_maintenance_tasks'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }
    }
}   

# Compile the configuration to create the MOF files
PerformVolumeMaintenanceTasks -OutputPath 'C:\BaselineManagement\'
