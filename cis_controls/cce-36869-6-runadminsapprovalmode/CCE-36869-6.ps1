Configuration RunAdminsApprovalMode {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Run_all_administrators_in_Admin_Approval_Mode = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
RunAdminsApprovalMode -OutputPath 'C:\BaselineManagement\'