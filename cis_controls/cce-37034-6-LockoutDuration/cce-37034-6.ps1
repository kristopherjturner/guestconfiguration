Configuration LockoutDuration {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         AccountPolicy 'SecuritySetting(INF): LockoutDuration'
         {
              Name = 'Account_lockout_duration'
              Account_lockout_duration = 15

         }
    }
}   

# Compile the configuration to create the MOF files
LockoutDuration -OutputPath 'C:\BaselineManagement\LockoutDuration'