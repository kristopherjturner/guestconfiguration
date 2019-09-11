Configuration AccountLockoutThreshold {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
            AccountPolicy 'SecuritySetting(INF): LockoutBadCount'
            {
              Name = 'Account_lockout_threshold'
              Account_lockout_threshold = 10

        }
    }
}   

# Compile the configuration to create the MOF files
AccountLockoutThreshold -OutputPath 'C:\BaselineManagement\AccountLockoutThreshold'