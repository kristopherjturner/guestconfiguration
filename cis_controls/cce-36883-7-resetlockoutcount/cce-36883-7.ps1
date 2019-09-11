Configuration ResetLockoutCount {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         AccountPolicy 'SecuritySetting(INF): ResetLockoutCount'
         {
              Reset_account_lockout_counter_after = 15
              Name = 'Reset_account_lockout_counter_after'

         }
    }
}   

# Compile the configuration to create the MOF files
ResetLockoutCount -OutputPath 'C:\BaselineManagement\ResetLockoutCount'