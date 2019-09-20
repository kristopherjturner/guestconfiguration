Configuration LockPagesInMemory {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Lock_pages_in_memory'
         {
              Policy = 'Lock_pages_in_memory'
              Force = $True
              Identity = @('')

         }

    }
}   

# Compile the configuration to create the MOF files
LockPagesInMemory -OutputPath 'C:\BaselineManagement\'
