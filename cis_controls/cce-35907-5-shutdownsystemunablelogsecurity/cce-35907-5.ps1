Configuration ShutDownSystemUnableLogSecurity {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Audit_Shut_down_system_immediately_if_unable_to_log_security_audits = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
ShutDownSystemUnableLogSecurity -OutputPath 'C:\BaselineManagement\'