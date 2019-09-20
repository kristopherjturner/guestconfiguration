Configuration DenyLogonLocally {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_locally'
         {
              Policy = 'Deny_log_on_locally'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }
    }
}   

# Compile the configuration to create the MOF files
DenyLogonLocally -OutputPath 'C:\BaselineManagement\'
