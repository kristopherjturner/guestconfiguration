Configuration ForceAuditPolicyOverrideAudit {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Audit_Force_audit_policy_subcategory_settings_Windows_Vista_or_later_to_override_audit_policy_category_settings = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
ForceAuditPolicyOverrideAudit -OutputPath 'C:\BaselineManagement\'