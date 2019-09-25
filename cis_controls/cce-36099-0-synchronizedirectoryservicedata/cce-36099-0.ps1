Configuration SynchronizeDirectoryServiceData {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    UserRightsAssignment 'UserRightsAssignment(INF): Synchronize_directory_service_data'
    {
         Policy = 'Synchronize_directory_service_data'
         Force = $True
         Identity = @('')

    }
    }
}   

# Compile the configuration to create the MOF files
SynchronizeDirectoryServiceData -OutputPath 'C:\BaselineManagement\'
