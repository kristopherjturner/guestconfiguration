Configuration PreventInstallPrinterDrivers {

	Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.8.0.0

Node localhost{
    SecurityOption AccountSecurityOptions {
        Name = 'AccountSecurityOptions'
    Devices_Prevent_users_from_installing_printer_drivers = 'Enabled'
    }
    }
}   

# Compile the configuration to create the MOF files
PreventInstallPrinterDrivers -OutputPath 'C:\BaselineManagement\'