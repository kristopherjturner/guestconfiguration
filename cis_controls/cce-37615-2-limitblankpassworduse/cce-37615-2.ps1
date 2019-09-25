Configuration LimitBlankPasswordUse {

    Import-DSCResource -ModuleName 'PSDscResources'

Node localhost{
    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse'
    {
         ValueName = 'LimitBlankPasswordUse'
         ValueType = 'Dword'
         Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
         ValueData = 1
    }
    }
}   

# Compile the configuration to create the MOF files
LimitBlankPasswordUse -OutputPath 'C:\BaselineManagement\'

