Configuration ManageAuditingSecurityLog {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
     UserRightsAssignment 'UserRightsAssignment(INF): Manage_auditing_and_security_log'
     {
          Policy = 'Manage_auditing_and_security_log'
          Force = $True
          Identity = @('*S-1-5-32-544')

     }

    }
}   

# Compile the configuration to create the MOF files
ManageAuditingSecurityLog -OutputPath 'C:\BaselineManagement\'
