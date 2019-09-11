Configuration PasswordComplexity {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
         AccountPolicy 'SecuritySetting(INF): PasswordComplexity'
         {
              Name = 'Password_must_meet_complexity_requirements'
              Password_must_meet_complexity_requirements = 'Enabled'

         }
    }
}   

# Compile the configuration to create the MOF files
PasswordComplexity -OutputPath 'C:\BaselineManagement\PasswordComplexity'