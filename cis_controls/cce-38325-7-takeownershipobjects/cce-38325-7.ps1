Configuration TakeOwnershipObjects {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    UserRightsAssignment 'UserRightsAssignment(INF): Take_ownership_of_files_or_other_objects'
    {
         Policy = 'Take_ownership_of_files_or_other_objects'
         Force = $True
         Identity = @('*S-1-5-32-544')

    }
    }
}   

# Compile the configuration to create the MOF files
TakeOwnershipObjects -OutputPath 'C:\BaselineManagement\'
