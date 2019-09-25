Configuration ModifyFirmwareEnvironmentValues {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         UserRightsAssignment 'UserRightsAssignment(INF): Modify_firmware_environment_values'
         {
              Policy = 'Modify_firmware_environment_values'
              Force = $True
              Identity = @('*S-1-5-32-544')
         }
    }
}   

# Compile the configuration to create the MOF files
ModifyFirmwareEnvironmentValues -OutputPath 'C:\BaselineManagement\'
