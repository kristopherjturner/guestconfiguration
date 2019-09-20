Configuration ChangeTimeZone {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Change_the_time_zone'
         {
              Policy = 'Change_the_time_zone'
              Force = $True
              Identity = @('*S-1-5-32-544', '*S-1-5-19')

         }
    }
}   

# Compile the configuration to create the MOF files
ChangeTimeZone -OutputPath 'C:\BaselineManagement\ChangeTimeZone'
