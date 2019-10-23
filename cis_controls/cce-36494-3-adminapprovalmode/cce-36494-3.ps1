Configuration AdminApprovalMode {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
        User_Account_Control_Admin_Approval_Mode_for_the_Built_in_Administrator_account = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
AdminApprovalMode -OutputPath 'C:\BaselineManagement\'