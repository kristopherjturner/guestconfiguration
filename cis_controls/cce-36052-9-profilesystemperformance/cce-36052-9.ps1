Configuration ProfileSystemPerformance {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
     UserRightsAssignment 'UserRightsAssignment(INF): Profile_system_performance'
     {
          Policy = 'Profile_system_performance'
          Force = $True
          Identity = @('*S-1-5-80-3139157870-2983391045-3678747466-658725712-1809340420', '*S-1-5-32-544')

     }
    }
}   

# Compile the configuration to create the MOF files
ProfileSystemPerformance -OutputPath 'C:\BaselineManagement\'
