Configuration DenyLogOnAsBatchJob {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_as_a_batch_job'
         {
              Policy = 'Deny_log_on_as_a_batch_job'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }

    }
}   

# Compile the configuration to create the MOF files
DenyLogOnAsBatchJob -OutputPath 'C:\BaselineManagement\DenyLogOnAsBatchJob'
