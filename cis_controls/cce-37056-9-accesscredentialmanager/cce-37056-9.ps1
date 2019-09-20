Configuration AccessCredentialManager {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Access_Credential_Manager_as_a_trusted_caller'
         {
              Policy = 'Access_Credential_Manager_as_a_trusted_caller'
              Force = $True
              Identity = @('')

         }
    }
}   

# Compile the configuration to create the MOF files
AccessCredentialManager -OutputPath 'C:\BaselineManagement\AccessCredentialManager'
