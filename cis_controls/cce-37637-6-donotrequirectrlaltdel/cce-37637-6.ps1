Configuration DoNotRequireCTRLALTDEL {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        Interactive_logon_Do_not_require_CTRL_ALT_DEL = 'Disabled'
    }
    }
}   

# Compile the configuration to create the MOF files
DoNotRequireCTRLALTDEL -OutputPath 'C:\BaselineManagement\'