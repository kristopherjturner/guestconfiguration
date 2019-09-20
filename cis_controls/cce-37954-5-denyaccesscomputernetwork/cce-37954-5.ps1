Configuration DenyAccessComputerNetwork {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Deny_access_to_this_computer_from_the_network'
         {
              Policy = 'Deny_access_to_this_computer_from_the_network'
              Force = $True
              Identity = @('*S-1-5-32-546', '*S-1-5-113')

         }

    }
}   

# Compile the configuration to create the MOF files
DenyAccessComputerNetwork -OutputPath 'C:\BaselineManagement\DenyAccessComputerNetwork'
