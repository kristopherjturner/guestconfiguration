Configuration DenyLogOnRemoteDesktop {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_through_Remote_Desktop_Services'
         {
              Policy = 'Deny_log_on_through_Remote_Desktop_Services'
              Force = $True
              Identity = @('*S-1-5-32-546', '*S-1-5-113')

         }

    }
}   

# Compile the configuration to create the MOF files
DenyLogOnRemoteDesktop -OutputPath 'C:\BaselineManagement\'
