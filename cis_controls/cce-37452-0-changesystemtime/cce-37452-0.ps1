Configuration ChangeSystemTime {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Change_the_system_time'
         {
              Policy = 'Change_the_system_time'
              Force = $True
              Identity = @('*S-1-5-32-544', '*S-1-5-19')

         }
    }
}   

# Compile the configuration to create the MOF files
ChangeSystemTime -OutputPath 'C:\BaselineManagement\ChangeSystemTime'
