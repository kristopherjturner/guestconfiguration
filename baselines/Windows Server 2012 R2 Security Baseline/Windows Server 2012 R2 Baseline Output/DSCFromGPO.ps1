
Configuration DSCFromGPO
{

	Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
	Import-DSCResource -ModuleName 'AuditPolicyDSC'
	Import-DSCResource -ModuleName 'SecurityPolicyDSC'
	# Module Not Found: Import-DSCResource -ModuleName 'PowerShellAccessControl'
	Node localhost
	{
         Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun'
         {
              ValueName = 'NoDriveTypeAutoRun'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer'
              ValueData = 255

         }

         Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\MSAOptional'
         {
              ValueName = 'MSAOptional'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableAutomaticRestartSignOn'
         {
              ValueName = 'DisableAutomaticRestartSignOn'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\IE'
         {
              ValueName = 'IE'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Internet Explorer\iexplore.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WindowsMediaPlayer'
         {
              ValueName = 'WindowsMediaPlayer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Media Player\wmplayer.exe -SEHOP -EAF -MandatoryASLR'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Skype'
         {
              ValueName = 'Skype'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Skype\Phone\Skype.exe -EAF'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\LyncCommunicator'
         {
              ValueName = 'LyncCommunicator'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Microsoft Lync\communicator.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WindowsLiveMail'
         {
              ValueName = 'WindowsLiveMail'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Live\Mail\wlmail.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\PhotoGallery'
         {
              ValueName = 'PhotoGallery'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Live\Photo Gallery\WLXPhotoGallery.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\LiveWriter'
         {
              ValueName = 'LiveWriter'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Live\Writer\WindowsLiveWriter.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\SkyDrive'
         {
              ValueName = 'SkyDrive'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\SkyDrive\SkyDrive.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Chrome'
         {
              ValueName = 'Chrome'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Google\Chrome\Application\chrome.exe -SEHOP'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\GoogleTalk'
         {
              ValueName = 'GoogleTalk'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Google\Google Talk\googletalk.exe -DEP -SEHOP'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Firefox'
         {
              ValueName = 'Firefox'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Firefox\firefox.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\FirefoxPluginContainer'
         {
              ValueName = 'FirefoxPluginContainer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Firefox\plugin-container.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Thunderbird'
         {
              ValueName = 'Thunderbird'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Thunderbird\thunderbird.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\ThunderbirdPluginContainer'
         {
              ValueName = 'ThunderbirdPluginContainer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Thunderbird\plugin-container.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Photoshop'
         {
              ValueName = 'Photoshop'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Adobe\Adobe Photoshop CS*\Photoshop.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Winamp'
         {
              ValueName = 'Winamp'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Winamp\winamp.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Opera'
         {
              ValueName = 'Opera'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Opera\opera.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WinRARGUI'
         {
              ValueName = 'WinRARGUI'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinRAR\winrar.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WinRARConsole'
         {
              ValueName = 'WinRARConsole'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinRAR\rar.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\UnRAR'
         {
              ValueName = 'UnRAR'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinRAR\unrar.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Winzip'
         {
              ValueName = 'Winzip'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinZip\winzip32.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Winzip64'
         {
              ValueName = 'Winzip64'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinZip\winzip64.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\VLC'
         {
              ValueName = 'VLC'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\VideoLAN\VLC\vlc.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\RealConverter'
         {
              ValueName = 'RealConverter'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Real\RealPlayer\realconverter.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\RealPlayer'
         {
              ValueName = 'RealPlayer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Real\RealPlayer\realplay.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\mIRC'
         {
              ValueName = 'mIRC'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\mIRC\mirc.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\7z'
         {
              ValueName = '7z'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\7-Zip\7z.exe -EAF'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\7zGUI'
         {
              ValueName = '7zGUI'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\7-Zip\7zG.exe -EAF'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\7zFM'
         {
              ValueName = '7zFM'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\7-Zip\7zFM.exe -EAF'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Safari'
         {
              ValueName = 'Safari'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Safari\Safari.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\QuickTimePlayer'
         {
              ValueName = 'QuickTimePlayer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\QuickTime\QuickTimePlayer.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\iTunes'
         {
              ValueName = 'iTunes'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\iTunes\iTunes.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Pidgin'
         {
              ValueName = 'Pidgin'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Pidgin\pidgin.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\FoxitReader'
         {
              ValueName = 'FoxitReader'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Foxit Reader\Foxit Reader.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Wordpad'
         {
              ValueName = 'Wordpad'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows NT\Accessories\wordpad.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Outlook'
         {
              ValueName = 'Outlook'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\OUTLOOK.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Word'
         {
              ValueName = 'Word'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\WINWORD.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Excel'
         {
              ValueName = 'Excel'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\EXCEL.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\PowerPoint'
         {
              ValueName = 'PowerPoint'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\POWERPNT.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Access'
         {
              ValueName = 'Access'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\MSACCESS.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Publisher'
         {
              ValueName = 'Publisher'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\MSPUB.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\InfoPath'
         {
              ValueName = 'InfoPath'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\INFOPATH.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Visio'
         {
              ValueName = 'Visio'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\VISIO.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\VisioViewer'
         {
              ValueName = 'VisioViewer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\VPREVIEW.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Lync'
         {
              ValueName = 'Lync'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\LYNC.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\PPTViewer'
         {
              ValueName = 'PPTViewer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\PPTVIEW.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Picture Manager'
         {
              ValueName = 'Picture Manager'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\OIS.EXE'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\AcrobatReader'
         {
              ValueName = 'AcrobatReader'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Adobe\Reader*\Reader\AcroRd32.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Acrobat'
         {
              ValueName = 'Acrobat'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Adobe\Acrobat*\Acrobat\Acrobat.exe'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre6_java'
         {
              ValueName = 'jre6_java'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre6\bin\java.exe -HeapSpray'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre6_javaw'
         {
              ValueName = 'jre6_javaw'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre6\bin\javaw.exe -HeapSpray'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre6_javaws'
         {
              ValueName = 'jre6_javaws'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre6\bin\javaws.exe -HeapSpray'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre7_java'
         {
              ValueName = 'jre7_java'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre7\bin\java.exe -HeapSpray'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre7_javaw'
         {
              ValueName = 'jre7_javaw'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre7\bin\javaw.exe -HeapSpray'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre7_javaws'
         {
              ValueName = 'jre7_javaws'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre7\bin\javaws.exe -HeapSpray'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\SysSettings\ASLR'
         {
              ValueName = 'ASLR'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\SysSettings'
              ValueData = 3

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\SysSettings\DEP'
         {
              ValueName = 'DEP'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\SysSettings'
              ValueData = 2

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\SysSettings\SEHOP'
         {
              ValueName = 'SEHOP'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\SysSettings'
              ValueData = 2

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application\MaxSize'
         {
              ValueName = 'MaxSize'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application'
              ValueData = 32768

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security\MaxSize'
         {
              ValueName = 'MaxSize'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security'
              ValueData = 196608

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\EventLog\System\MaxSize'
         {
              ValueName = 'MaxSize'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\System'
              ValueData = 32768

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated'
         {
              ValueName = 'AlwaysInstallElevated'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Installer'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Personalization\NoLockScreenCamera'
         {
              ValueName = 'NoLockScreenCamera'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Personalization'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Personalization\NoLockScreenSlideshow'
         {
              ValueName = 'NoLockScreenSlideshow'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Personalization'
              ValueData = 1

         }

         <#
         	This MultiString Value has a value of $null, 
          	Some Security Policies require Registry Values to be $null
          	If you believe ' ' is the correct value for this string, you may change it here.
         #>
         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Appx\'
         {
              ValueName = ''
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Appx'

         }

         <#
         	This MultiString Value has a value of $null, 
          	Some Security Policies require Registry Values to be $null
          	If you believe ' ' is the correct value for this string, you may change it here.
         #>
         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Dll\'
         {
              ValueName = ''
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Dll'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\EnforcementMode'
         {
              ValueName = 'EnforcementMode'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\5e3ec135-b5af-4961-ae4d-cde98710afc9\Value'
         {
              ValueName = 'Value'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\5e3ec135-b5af-4961-ae4d-cde98710afc9'
              ValueData = '<FilePublisherRule Id="5e3ec135-b5af-4961-ae4d-cde98710afc9" Name="Block Google Chrome" Description="" UserOrGroupSid="S-1-1-0" Action="Deny"><Conditions><FilePublisherCondition PublisherName="O=GOOGLE INC, L=MOUNTAIN VIEW, S=CALIFORNIA, C=US" ProductName="GOOGLE CHROME" BinaryName="CHROME.EXE"><BinaryVersionRange LowSection="*" HighSection="*"/></FilePublisherCondition></Conditions></FilePublisherRule>
'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\6db6c8f3-cf7c-4754-a438-94c95345bb53\Value'
         {
              ValueName = 'Value'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\6db6c8f3-cf7c-4754-a438-94c95345bb53'
              ValueData = '<FilePublisherRule Id="6db6c8f3-cf7c-4754-a438-94c95345bb53" Name="Block Mozilla Firefox" Description="" UserOrGroupSid="S-1-1-0" Action="Deny"><Conditions><FilePublisherCondition PublisherName="O=MOZILLA CORPORATION, L=MOUNTAIN VIEW, S=CA, C=US" ProductName="FIREFOX" BinaryName="FIREFOX.EXE"><BinaryVersionRange LowSection="*" HighSection="*"/></FilePublisherCondition></Conditions></FilePublisherRule>
'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\881d54fe-3848-4d6a-95fd-42d48ebe60b8\Value'
         {
              ValueName = 'Value'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\881d54fe-3848-4d6a-95fd-42d48ebe60b8'
              ValueData = '<FilePublisherRule Id="881d54fe-3848-4d6a-95fd-42d48ebe60b8" Name="Block Internet Explorer" Description="" UserOrGroupSid="S-1-1-0" Action="Deny"><Conditions><FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="INTERNET EXPLORER" BinaryName="IEXPLORE.EXE"><BinaryVersionRange LowSection="*" HighSection="*"/></FilePublisherCondition></Conditions></FilePublisherRule>
'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\921cc481-6e17-4653-8f75-050b80acca20\Value'
         {
              ValueName = 'Value'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\921cc481-6e17-4653-8f75-050b80acca20'
              ValueData = '<FilePathRule Id="921cc481-6e17-4653-8f75-050b80acca20" Name="(Default Rule) All files located in the Program Files folder" Description="Allows members of the Everyone group to run applications that are located in the Program Files folder." UserOrGroupSid="S-1-1-0" Action="Allow"><Conditions><FilePathCondition Path="%PROGRAMFILES%\*"/></Conditions></FilePathRule>
'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\a61c8b2c-a319-4cd0-9690-d2177cad7b51\Value'
         {
              ValueName = 'Value'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\a61c8b2c-a319-4cd0-9690-d2177cad7b51'
              ValueData = '<FilePathRule Id="a61c8b2c-a319-4cd0-9690-d2177cad7b51" Name="(Default Rule) All files located in the Windows folder" Description="Allows members of the Everyone group to run applications that are located in the Windows folder." UserOrGroupSid="S-1-1-0" Action="Allow"><Conditions><FilePathCondition Path="%WINDIR%\*"/></Conditions></FilePathRule>
'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\fd686d83-a829-4351-8ff4-27c7de5755d2\Value'
         {
              ValueName = 'Value'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Exe\fd686d83-a829-4351-8ff4-27c7de5755d2'
              ValueData = '<FilePathRule Id="fd686d83-a829-4351-8ff4-27c7de5755d2" Name="(Default Rule) All files" Description="Allows members of the local Administrators group to run all applications." UserOrGroupSid="S-1-5-32-544" Action="Allow"><Conditions><FilePathCondition Path="*"/></Conditions></FilePathRule>
'

         }

         <#
         	This MultiString Value has a value of $null, 
          	Some Security Policies require Registry Values to be $null
          	If you believe ' ' is the correct value for this string, you may change it here.
         #>
         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Msi\'
         {
              ValueName = ''
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Msi'

         }

         <#
         	This MultiString Value has a value of $null, 
          	Some Security Policies require Registry Values to be $null
          	If you believe ' ' is the correct value for this string, you may change it here.
         #>
         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Script\'
         {
              ValueName = ''
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\SrpV2\Script'

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\System\DontDisplayNetworkSelectionUI'
         {
              ValueName = 'DontDisplayNetworkSelectionUI'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Windows Search\AllowIndexingEncryptedStoresOrItems'
         {
              ValueName = 'AllowIndexingEncryptedStoresOrItems'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall'
         {
              ValueName = 'EnableFirewall'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\AllowLocalPolicyMerge'
         {
              ValueName = 'AllowLocalPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DisableUnicastResponsesToMulticastBroadcast'
         {
              ValueName = 'DisableUnicastResponsesToMulticastBroadcast'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\AllowLocalIPsecPolicyMerge'
         {
              ValueName = 'AllowLocalIPsecPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultOutboundAction'
         {
              ValueName = 'DefaultOutboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultInboundAction'
         {
              ValueName = 'DefaultInboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DisableNotifications'
         {
              ValueName = 'DisableNotifications'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalPolicyMerge'
         {
              ValueName = 'AllowLocalPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultOutboundAction'
         {
              ValueName = 'DefaultOutboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultInboundAction'
         {
              ValueName = 'DefaultInboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalIPsecPolicyMerge'
         {
              ValueName = 'AllowLocalIPsecPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DisableNotifications'
         {
              ValueName = 'DisableNotifications'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DisableUnicastResponsesToMulticastBroadcast'
         {
              ValueName = 'DisableUnicastResponsesToMulticastBroadcast'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\EnableFirewall'
         {
              ValueName = 'EnableFirewall'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DisableUnicastResponsesToMulticastBroadcast'
         {
              ValueName = 'DisableUnicastResponsesToMulticastBroadcast'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\EnableFirewall'
         {
              ValueName = 'EnableFirewall'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalIPsecPolicyMerge'
         {
              ValueName = 'AllowLocalIPsecPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalPolicyMerge'
         {
              ValueName = 'AllowLocalPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DisableNotifications'
         {
              ValueName = 'DisableNotifications'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultInboundAction'
         {
              ValueName = 'DefaultInboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultOutboundAction'
         {
              ValueName = 'DefaultOutboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 0

         }

         Registry 'Registry(POL): HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest\UseLogonCredential'
         {
              ValueName = 'UseLogonCredential'
              ValueType = 'Dword'
              Key = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest'
              ValueData = 0

         }

         <#Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun'
         {
              ValueName = 'NoDriveTypeAutoRun'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer'
              ValueData = 255

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableAutomaticRestartSignOn'
         {
              ValueName = 'DisableAutomaticRestartSignOn'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\MSAOptional'
         {
              ValueName = 'MSAOptional'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\LocalAccountTokenFilterPolicy'
         {
              ValueName = 'LocalAccountTokenFilterPolicy'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\IE'
         {
              ValueName = 'IE'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Internet Explorer\iexplore.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WindowsMediaPlayer'
         {
              ValueName = 'WindowsMediaPlayer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Media Player\wmplayer.exe -SEHOP -EAF -MandatoryASLR'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Skype'
         {
              ValueName = 'Skype'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Skype\Phone\Skype.exe -EAF'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\LyncCommunicator'
         {
              ValueName = 'LyncCommunicator'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Microsoft Lync\communicator.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WindowsLiveMail'
         {
              ValueName = 'WindowsLiveMail'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Live\Mail\wlmail.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\PhotoGallery'
         {
              ValueName = 'PhotoGallery'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Live\Photo Gallery\WLXPhotoGallery.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\LiveWriter'
         {
              ValueName = 'LiveWriter'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows Live\Writer\WindowsLiveWriter.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\SkyDrive'
         {
              ValueName = 'SkyDrive'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\SkyDrive\SkyDrive.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Chrome'
         {
              ValueName = 'Chrome'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Google\Chrome\Application\chrome.exe -SEHOP'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\GoogleTalk'
         {
              ValueName = 'GoogleTalk'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Google\Google Talk\googletalk.exe -DEP -SEHOP'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Firefox'
         {
              ValueName = 'Firefox'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Firefox\firefox.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\FirefoxPluginContainer'
         {
              ValueName = 'FirefoxPluginContainer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Firefox\plugin-container.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Thunderbird'
         {
              ValueName = 'Thunderbird'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Thunderbird\thunderbird.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\ThunderbirdPluginContainer'
         {
              ValueName = 'ThunderbirdPluginContainer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Mozilla Thunderbird\plugin-container.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Photoshop'
         {
              ValueName = 'Photoshop'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Adobe\Adobe Photoshop CS*\Photoshop.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Winamp'
         {
              ValueName = 'Winamp'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Winamp\winamp.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Opera'
         {
              ValueName = 'Opera'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Opera\opera.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WinRARGUI'
         {
              ValueName = 'WinRARGUI'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinRAR\winrar.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\WinRARConsole'
         {
              ValueName = 'WinRARConsole'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinRAR\rar.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\UnRAR'
         {
              ValueName = 'UnRAR'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinRAR\unrar.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Winzip'
         {
              ValueName = 'Winzip'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinZip\winzip32.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Winzip64'
         {
              ValueName = 'Winzip64'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\WinZip\winzip64.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\VLC'
         {
              ValueName = 'VLC'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\VideoLAN\VLC\vlc.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\RealConverter'
         {
              ValueName = 'RealConverter'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Real\RealPlayer\realconverter.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\RealPlayer'
         {
              ValueName = 'RealPlayer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Real\RealPlayer\realplay.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\mIRC'
         {
              ValueName = 'mIRC'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\mIRC\mirc.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\7z'
         {
              ValueName = '7z'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\7-Zip\7z.exe -EAF'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\7zGUI'
         {
              ValueName = '7zGUI'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\7-Zip\7zG.exe -EAF'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\7zFM'
         {
              ValueName = '7zFM'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\7-Zip\7zFM.exe -EAF'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Safari'
         {
              ValueName = 'Safari'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Safari\Safari.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\QuickTimePlayer'
         {
              ValueName = 'QuickTimePlayer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\QuickTime\QuickTimePlayer.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\iTunes'
         {
              ValueName = 'iTunes'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\iTunes\iTunes.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Pidgin'
         {
              ValueName = 'Pidgin'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Pidgin\pidgin.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\FoxitReader'
         {
              ValueName = 'FoxitReader'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Foxit Reader\Foxit Reader.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Wordpad'
         {
              ValueName = 'Wordpad'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Windows NT\Accessories\wordpad.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Outlook'
         {
              ValueName = 'Outlook'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\OUTLOOK.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Word'
         {
              ValueName = 'Word'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\WINWORD.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Excel'
         {
              ValueName = 'Excel'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\EXCEL.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\PowerPoint'
         {
              ValueName = 'PowerPoint'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\POWERPNT.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Access'
         {
              ValueName = 'Access'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\MSACCESS.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Publisher'
         {
              ValueName = 'Publisher'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\MSPUB.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\InfoPath'
         {
              ValueName = 'InfoPath'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\INFOPATH.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Visio'
         {
              ValueName = 'Visio'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\VISIO.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\VisioViewer'
         {
              ValueName = 'VisioViewer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\VPREVIEW.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Lync'
         {
              ValueName = 'Lync'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\LYNC.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\PPTViewer'
         {
              ValueName = 'PPTViewer'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\PPTVIEW.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Picture Manager'
         {
              ValueName = 'Picture Manager'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\OFFICE1*\OIS.EXE'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\AcrobatReader'
         {
              ValueName = 'AcrobatReader'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Adobe\Reader*\Reader\AcroRd32.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\Acrobat'
         {
              ValueName = 'Acrobat'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Adobe\Acrobat*\Acrobat\Acrobat.exe'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre6_java'
         {
              ValueName = 'jre6_java'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre6\bin\java.exe -HeapSpray'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre6_javaw'
         {
              ValueName = 'jre6_javaw'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre6\bin\javaw.exe -HeapSpray'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre6_javaws'
         {
              ValueName = 'jre6_javaws'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre6\bin\javaws.exe -HeapSpray'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre7_java'
         {
              ValueName = 'jre7_java'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre7\bin\java.exe -HeapSpray'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre7_javaw'
         {
              ValueName = 'jre7_javaw'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre7\bin\javaw.exe -HeapSpray'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\Defaults\jre7_javaws'
         {
              ValueName = 'jre7_javaws'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\Defaults'
              ValueData = '*\Java\jre7\bin\javaws.exe -HeapSpray'

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\SysSettings\ASLR'
         {
              ValueName = 'ASLR'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\SysSettings'
              ValueData = 3

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\SysSettings\DEP'
         {
              ValueName = 'DEP'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\SysSettings'
              ValueData = 2

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\EMET\SysSettings\SEHOP'
         {
              ValueName = 'SEHOP'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\EMET\SysSettings'
              ValueData = 2

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application\MaxSize'
         {
              ValueName = 'MaxSize'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application'
              ValueData = 32768

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security\MaxSize'
         {
              ValueName = 'MaxSize'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security'
              ValueData = 196608

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\EventLog\System\MaxSize'
         {
              ValueName = 'MaxSize'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\System'
              ValueData = 32768

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated'
         {
              ValueName = 'AlwaysInstallElevated'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Installer'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Personalization\NoLockScreenCamera'
         {
              ValueName = 'NoLockScreenCamera'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Personalization'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Personalization\NoLockScreenSlideshow'
         {
              ValueName = 'NoLockScreenSlideshow'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Personalization'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\System\DontDisplayNetworkSelectionUI'
         {
              ValueName = 'DontDisplayNetworkSelectionUI'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\Windows Search\AllowIndexingEncryptedStoresOrItems'
         {
              ValueName = 'AllowIndexingEncryptedStoresOrItems'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DisableNotifications'
         {
              ValueName = 'DisableNotifications'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DisableUnicastResponsesToMulticastBroadcast'
         {
              ValueName = 'DisableUnicastResponsesToMulticastBroadcast'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\AllowLocalIPsecPolicyMerge'
         {
              ValueName = 'AllowLocalIPsecPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultOutboundAction'
         {
              ValueName = 'DefaultOutboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall'
         {
              ValueName = 'EnableFirewall'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\AllowLocalPolicyMerge'
         {
              ValueName = 'AllowLocalPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultInboundAction'
         {
              ValueName = 'DefaultInboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DisableNotifications'
         {
              ValueName = 'DisableNotifications'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\EnableFirewall'
         {
              ValueName = 'EnableFirewall'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalIPsecPolicyMerge'
         {
              ValueName = 'AllowLocalIPsecPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DisableUnicastResponsesToMulticastBroadcast'
         {
              ValueName = 'DisableUnicastResponsesToMulticastBroadcast'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalPolicyMerge'
         {
              ValueName = 'AllowLocalPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultInboundAction'
         {
              ValueName = 'DefaultInboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultOutboundAction'
         {
              ValueName = 'DefaultOutboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DisableUnicastResponsesToMulticastBroadcast'
         {
              ValueName = 'DisableUnicastResponsesToMulticastBroadcast'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalIPsecPolicyMerge'
         {
              ValueName = 'AllowLocalIPsecPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalPolicyMerge'
         {
              ValueName = 'AllowLocalPolicyMerge'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\EnableFirewall'
         {
              ValueName = 'EnableFirewall'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DisableNotifications'
         {
              ValueName = 'DisableNotifications'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultOutboundAction'
         {
              ValueName = 'DefaultOutboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultInboundAction'
         {
              ValueName = 'DefaultInboundAction'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
              ValueData = 1

         }#>

         <#Registry 'Registry(POL): HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest\UseLogonCredential'
         {
              ValueName = 'UseLogonCredential'
              ValueType = 'Dword'
              Key = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest'
              ValueData = 0

         }#>

         <#Registry 'Registry(POL): HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop\ScreenSaveActive'
         {
              ValueName = 'ScreenSaveActive'
              ValueType = 'String'
              Key = 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop'
              ValueData = '1'

         }#>

         <#Registry 'Registry(POL): HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop\SCRNSAVE.EXE'
         {
              ValueName = 'SCRNSAVE.EXE'
              ValueType = 'String'
              Key = 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop'
              ValueData = 'scrnsave.scr'

         }#>

         <#Registry 'Registry(POL): HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop\ScreenSaverIsSecure'
         {
              ValueName = 'ScreenSaverIsSecure'
              ValueType = 'String'
              Key = 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop'
              ValueData = '1'

         }#>

         <#Registry 'Registry(POL): HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications\NoToastApplicationNotificationOnLockScreen'
         {
              ValueName = 'NoToastApplicationNotificationOnLockScreen'
              ValueType = 'Dword'
              Key = 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications'
              ValueData = 1

         }#>

         AuditPolicySubcategory 'Audit Credential Validation (Success) - Inclusion'
         {
              Name = 'Credential Validation'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Credential Validation (Failure) - Inclusion'
         {
              Name = 'Credential Validation'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Computer Account Management (Success) - Inclusion'
         {
              Name = 'Computer Account Management'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Computer Account Management (Failure) - Inclusion'
         {
              Name = 'Computer Account Management'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Other Account Management Events (Success) - Inclusion'
         {
              Name = 'Other Account Management Events'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Other Account Management Events (Failure) - Inclusion'
         {
              Name = 'Other Account Management Events'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Security Group Management (Success) - Inclusion'
         {
              Name = 'Security Group Management'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Security Group Management (Failure) - Inclusion'
         {
              Name = 'Security Group Management'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit User Account Management (Success) - Inclusion'
         {
              Name = 'User Account Management'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit User Account Management (Failure) - Inclusion'
         {
              Name = 'User Account Management'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Process Creation (Success) - Inclusion'
         {
              Name = 'Process Creation'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Process Creation (Failure) - Inclusion'
         {
              Name = 'Process Creation'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Directory Service Access (Success) - Inclusion'
         {
              Name = 'Directory Service Access'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Directory Service Access (Failure) - Inclusion'
         {
              Name = 'Directory Service Access'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Directory Service Changes (Success) - Inclusion'
         {
              Name = 'Directory Service Changes'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Directory Service Changes (Failure) - Inclusion'
         {
              Name = 'Directory Service Changes'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Account Lockout (Success) - Inclusion'
         {
              Name = 'Account Lockout'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Account Lockout (Failure) - Inclusion'
         {
              Name = 'Account Lockout'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Logoff (Success) - Inclusion'
         {
              Name = 'Logoff'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Logoff (Failure) - Inclusion'
         {
              Name = 'Logoff'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Logon (Success) - Inclusion'
         {
              Name = 'Logon'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Logon (Failure) - Inclusion'
         {
              Name = 'Logon'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Special Logon (Success) - Inclusion'
         {
              Name = 'Special Logon'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Special Logon (Failure) - Inclusion'
         {
              Name = 'Special Logon'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Audit Policy Change (Success) - Inclusion'
         {
              Name = 'Audit Policy Change'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Audit Policy Change (Failure) - Inclusion'
         {
              Name = 'Audit Policy Change'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Authentication Policy Change (Success) - Inclusion'
         {
              Name = 'Authentication Policy Change'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Authentication Policy Change (Failure) - Inclusion'
         {
              Name = 'Authentication Policy Change'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Sensitive Privilege Use (Success) - Inclusion'
         {
              Name = 'Sensitive Privilege Use'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Sensitive Privilege Use (Failure) - Inclusion'
         {
              Name = 'Sensitive Privilege Use'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit IPsec Driver (Success) - Inclusion'
         {
              Name = 'IPsec Driver'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit IPsec Driver (Failure) - Inclusion'
         {
              Name = 'IPsec Driver'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Other System Events (Success) - Inclusion'
         {
              Name = 'Other System Events'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Other System Events (Failure) - Inclusion'
         {
              Name = 'Other System Events'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Security State Change (Success) - Inclusion'
         {
              Name = 'Security State Change'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Security State Change (Failure) - Inclusion'
         {
              Name = 'Security State Change'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit Security System Extension (Success) - Inclusion'
         {
              Name = 'Security System Extension'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit Security System Extension (Failure) - Inclusion'
         {
              Name = 'Security System Extension'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         AuditPolicySubcategory 'Audit System Integrity (Success) - Inclusion'
         {
              Name = 'System Integrity'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }

          AuditPolicySubcategory 'Audit System Integrity (Failure) - Inclusion'
         {
              Name = 'System Integrity'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }

         <#AuditPolicySubcategory 'Audit Credential Validation (Success) - Inclusion'
         {
              Name = 'Credential Validation'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Credential Validation (Failure) - Inclusion'
         {
              Name = 'Credential Validation'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Computer Account Management (Success) - Inclusion'
         {
              Name = 'Computer Account Management'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Computer Account Management (Failure) - Inclusion'
         {
              Name = 'Computer Account Management'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Other Account Management Events (Success) - Inclusion'
         {
              Name = 'Other Account Management Events'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Other Account Management Events (Failure) - Inclusion'
         {
              Name = 'Other Account Management Events'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Security Group Management (Success) - Inclusion'
         {
              Name = 'Security Group Management'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Security Group Management (Failure) - Inclusion'
         {
              Name = 'Security Group Management'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit User Account Management (Success) - Inclusion'
         {
              Name = 'User Account Management'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit User Account Management (Failure) - Inclusion'
         {
              Name = 'User Account Management'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Process Creation (Success) - Inclusion'
         {
              Name = 'Process Creation'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Process Creation (Failure) - Inclusion'
         {
              Name = 'Process Creation'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Account Lockout (Success) - Inclusion'
         {
              Name = 'Account Lockout'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Account Lockout (Failure) - Inclusion'
         {
              Name = 'Account Lockout'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Logoff (Success) - Inclusion'
         {
              Name = 'Logoff'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Logoff (Failure) - Inclusion'
         {
              Name = 'Logoff'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Logon (Success) - Inclusion'
         {
              Name = 'Logon'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Logon (Failure) - Inclusion'
         {
              Name = 'Logon'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Special Logon (Success) - Inclusion'
         {
              Name = 'Special Logon'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Special Logon (Failure) - Inclusion'
         {
              Name = 'Special Logon'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Audit Policy Change (Success) - Inclusion'
         {
              Name = 'Audit Policy Change'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Audit Policy Change (Failure) - Inclusion'
         {
              Name = 'Audit Policy Change'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Authentication Policy Change (Success) - Inclusion'
         {
              Name = 'Authentication Policy Change'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Authentication Policy Change (Failure) - Inclusion'
         {
              Name = 'Authentication Policy Change'
              Ensure = 'Absent'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Sensitive Privilege Use (Success) - Inclusion'
         {
              Name = 'Sensitive Privilege Use'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Sensitive Privilege Use (Failure) - Inclusion'
         {
              Name = 'Sensitive Privilege Use'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit IPsec Driver (Success) - Inclusion'
         {
              Name = 'IPsec Driver'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit IPsec Driver (Failure) - Inclusion'
         {
              Name = 'IPsec Driver'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Other System Events (Success) - Inclusion'
         {
              Name = 'Other System Events'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Other System Events (Failure) - Inclusion'
         {
              Name = 'Other System Events'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Security State Change (Success) - Inclusion'
         {
              Name = 'Security State Change'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Security State Change (Failure) - Inclusion'
         {
              Name = 'Security State Change'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit Security System Extension (Success) - Inclusion'
         {
              Name = 'Security System Extension'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit Security System Extension (Failure) - Inclusion'
         {
              Name = 'Security System Extension'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         <#AuditPolicySubcategory 'Audit System Integrity (Success) - Inclusion'
         {
              Name = 'System Integrity'
              Ensure = 'Present'
              AuditFlag = 'Success'

         }#>

          <#AuditPolicySubcategory 'Audit System Integrity (Failure) - Inclusion'
         {
              Name = 'System Integrity'
              Ensure = 'Present'
              AuditFlag = 'Failure'

         }#>

         Service 'Services(INF): AppIDSvc'
         {
              Name = 'AppIDSvc'
              State = 'Running'

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\EnablePlainTextPassword'
         {
              ValueName = 'EnablePlainTextPassword'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\ScRemoveOption'
         {
              ValueName = 'ScRemoveOption'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '1'

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableInstallerDetection'
         {
              ValueName = 'EnableInstallerDetection'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\disablepasswordchange'
         {
              ValueName = 'disablepasswordchange'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\PasswordExpiryWarning'
         {
              ValueName = 'PasswordExpiryWarning'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = 14

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\CrashOnAuditFail'
         {
              ValueName = 'CrashOnAuditFail'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Session Manager\ProtectionMode'
         {
              ValueName = 'ProtectionMode'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\NTDS\Parameters\LDAPServerIntegrity'
         {
              ValueName = 'LDAPServerIntegrity'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\NTDS\Parameters'
              ValueData = 2

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableSecureUIAPaths'
         {
              ValueName = 'EnableSecureUIAPaths'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\ScreenSaverGracePeriod'
         {
              ValueName = 'ScreenSaverGracePeriod'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '5'

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths\Machine'
         {
              ValueName = 'Machine'
              ValueType = 'MultiString'
              Key = 'HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths'
              ValueData = @('System\CurrentControlSet\Control\ProductOptions', 'System\CurrentControlSet\Control\Server Applications', 'Software\Microsoft\Windows NT\CurrentVersion')

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictAnonymousSAM'
         {
              ValueName = 'RestrictAnonymousSAM'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinServerSec'
         {
              ValueName = 'NTLMMinServerSec'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
              ValueData = 537395200

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths\Machine'
         {
              ValueName = 'Machine'
              ValueType = 'MultiString'
              Key = 'HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths'
              ValueData = @('System\CurrentControlSet\Control\Print\Printers', 'System\CurrentControlSet\Services\Eventlog', 'Software\Microsoft\OLAP Server', 'Software\Microsoft\Windows NT\CurrentVersion\Print', 'Software\Microsoft\Windows NT\CurrentVersion\Windows', 'System\CurrentControlSet\Control\ContentIndex', 'System\CurrentControlSet\Control\Terminal Server', 'System\CurrentControlSet\Control\Terminal Server\UserConfig', 'System\CurrentControlSet\Control\Terminal Server\DefaultUserConfiguration', 'Software\Microsoft\Windows NT\CurrentVersion\Perflib', 'System\CurrentControlSet\Services\SysmonLog')

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon'
         {
              ValueName = 'AutoAdminLogon'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '0'

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorUser'
         {
              ValueName = 'ConsentPromptBehaviorUser'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\maximumpasswordage'
         {
              ValueName = 'maximumpasswordage'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 30

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Tcpip6\Parameters\DisableIPSourceRouting'
         {
              ValueName = 'DisableIPSourceRouting'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Tcpip6\Parameters'
              ValueData = 2

         }

         Registry 'Registry(INF): HKLM:\Software\Policies\Microsoft\Windows\Safer\CodeIdentifiers\AuthenticodeEnabled'
         {
              ValueName = 'AuthenticodeEnabled'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Safer\CodeIdentifiers'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictAnonymous'
         {
              ValueName = 'RestrictAnonymous'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\RequireSecuritySignature'
         {
              ValueName = 'RequireSecuritySignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\UseMachineId'
         {
              ValueName = 'UseMachineId'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\NoLMHash'
         {
              ValueName = 'NoLMHash'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Session Manager\Kernel\ObCaseInsensitive'
         {
              ValueName = 'ObCaseInsensitive'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager\Kernel'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LmCompatibilityLevel'
         {
              ValueName = 'LmCompatibilityLevel'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 5

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\enablesecuritysignature'
         {
              ValueName = 'enablesecuritysignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\requiresignorseal'
         {
              ValueName = 'requiresignorseal'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DontDisplayLastUserName'
         {
              ValueName = 'DontDisplayLastUserName'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\EnableSecuritySignature'
         {
              ValueName = 'EnableSecuritySignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinClientSec'
         {
              ValueName = 'NTLMMinClientSec'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
              ValueData = 537395200

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\SCENoApplyLegacyAuditPolicy'
         {
              ValueName = 'SCENoApplyLegacyAuditPolicy'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\ForceGuest'
         {
              ValueName = 'ForceGuest'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin'
         {
              ValueName = 'ConsentPromptBehaviorAdmin'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 2

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ShutdownWithoutLogon'
         {
              ValueName = 'ShutdownWithoutLogon'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\PromptOnSecureDesktop'
         {
              ValueName = 'PromptOnSecureDesktop'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\requiresecuritysignature'
         {
              ValueName = 'requiresecuritysignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\requirestrongkey'
         {
              ValueName = 'requirestrongkey'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\RestrictNullSessAccess'
         {
              ValueName = 'RestrictNullSessAccess'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\EveryoneIncludesAnonymous'
         {
              ValueName = 'EveryoneIncludesAnonymous'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\RefusePasswordChange'
         {
              ValueName = 'RefusePasswordChange'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\enableforcedlogoff'
         {
              ValueName = 'enableforcedlogoff'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableVirtualization'
         {
              ValueName = 'EnableVirtualization'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole\securitylevel'
         {
              ValueName = 'securitylevel'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LDAP\LDAPClientIntegrity'
         {
              ValueName = 'LDAPClientIntegrity'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LDAP'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Tcpip\Parameters\DisableIPSourceRouting'
         {
              ValueName = 'DisableIPSourceRouting'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Tcpip\Parameters'
              ValueData = 2

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\FilterAdministratorToken'
         {
              ValueName = 'FilterAdministratorToken'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA'
         {
              ValueName = 'EnableLUA'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\autodisconnect'
         {
              ValueName = 'autodisconnect'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 15

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableUIADesktopToggle'
         {
              ValueName = 'EnableUIADesktopToggle'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\SafeDllSearchMode'
         {
              ValueName = 'SafeDllSearchMode'
              ValueType = 'Dword'
              Key = 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse'
         {
              ValueName = 'LimitBlankPasswordUse'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole\setcommand'
         {
              ValueName = 'setcommand'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown'
         {
              ValueName = 'ClearPageFileAtShutdown'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager\Memory Management'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\SubmitControl'
         {
              ValueName = 'SubmitControl'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\sealsecurechannel'
         {
              ValueName = 'sealsecurechannel'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateDASD'
         {
              ValueName = 'AllocateDASD'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '0'

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD'
         {
              ValueName = 'DisableCAD'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\allownullsessionfallback'
         {
              ValueName = 'allownullsessionfallback'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
              ValueData = 0

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers\AddPrinterDrivers'
         {
              ValueName = 'AddPrinterDrivers'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\signsecurechannel'
         {
              ValueName = 'signsecurechannel'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }

         Registry 'Registry(INF): HKLM:\SYSTEM\CurrentControlSet\Services\Eventlog\Security\WarningLevel'
         {
              ValueName = 'WarningLevel'
              ValueType = 'Dword'
              Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\Eventlog\Security'
              ValueData = 90

         }

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\InactivityTimeoutSecs'
         {
              ValueName = 'InactivityTimeoutSecs'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 900

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Load_and_unload_device_drivers'
         {
              Policy = 'Load_and_unload_device_drivers'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Impersonate_a_client_after_authentication'
         {
              Policy = 'Impersonate_a_client_after_authentication'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-6', '*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Change_the_system_time'
         {
              Policy = 'Change_the_system_time'
              Force = $True
              Identity = @('*S-1-5-32-544', '*S-1-5-19')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Take_ownership_of_files_or_other_objects'
         {
              Policy = 'Take_ownership_of_files_or_other_objects'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_locally'
         {
              Policy = 'Deny_log_on_locally'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_as_a_batch_job'
         {
              Policy = 'Deny_log_on_as_a_batch_job'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Back_up_files_and_directories'
         {
              Policy = 'Back_up_files_and_directories'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Access_Credential_Manager_as_a_trusted_caller'
         {
              Policy = 'Access_Credential_Manager_as_a_trusted_caller'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Allow_log_on_through_Remote_Desktop_Services'
         {
              Policy = 'Allow_log_on_through_Remote_Desktop_Services'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Adjust_memory_quotas_for_a_process'
         {
              Policy = 'Adjust_memory_quotas_for_a_process'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Modify_an_object_label'
         {
              Policy = 'Modify_an_object_label'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Access_this_computer_from_the_network'
         {
              Policy = 'Access_this_computer_from_the_network'
              Force = $True
              Identity = @('*S-1-5-9', '*S-1-5-11', '*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Debug_programs'
         {
              Policy = 'Debug_programs'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_through_Remote_Desktop_Services'
         {
              Policy = 'Deny_log_on_through_Remote_Desktop_Services'
              Force = $True
              Identity = @('*S-1-5-32-546', '*S-1-5-113')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Lock_pages_in_memory'
         {
              Policy = 'Lock_pages_in_memory'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Increase_scheduling_priority'
         {
              Policy = 'Increase_scheduling_priority'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Add_workstations_to_domain'
         {
              Policy = 'Add_workstations_to_domain'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Change_the_time_zone'
         {
              Policy = 'Change_the_time_zone'
              Force = $True
              Identity = @('*S-1-5-32-544', '*S-1-5-19')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Replace_a_process_level_token'
         {
              Policy = 'Replace_a_process_level_token'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Allow_log_on_locally'
         {
              Policy = 'Allow_log_on_locally'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_a_pagefile'
         {
              Policy = 'Create_a_pagefile'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Restore_files_and_directories'
         {
              Policy = 'Restore_files_and_directories'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_a_token_object'
         {
              Policy = 'Create_a_token_object'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_permanent_shared_objects'
         {
              Policy = 'Create_permanent_shared_objects'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Profile_system_performance'
         {
              Policy = 'Profile_system_performance'
              Force = $True
              Identity = @('*S-1-5-80-3139157870-2983391045-3678747466-658725712-1809340420', '*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_global_objects'
         {
              Policy = 'Create_global_objects'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-6', '*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Synchronize_directory_service_data'
         {
              Policy = 'Synchronize_directory_service_data'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_as_a_service'
         {
              Policy = 'Deny_log_on_as_a_service'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_access_to_this_computer_from_the_network'
         {
              Policy = 'Deny_access_to_this_computer_from_the_network'
              Force = $True
              Identity = @('*S-1-5-32-546', '*S-1-5-113')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
         {
              Policy = 'Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Force_shutdown_from_a_remote_system'
         {
              Policy = 'Force_shutdown_from_a_remote_system'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Shut_down_the_system'
         {
              Policy = 'Shut_down_the_system'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Perform_volume_maintenance_tasks'
         {
              Policy = 'Perform_volume_maintenance_tasks'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Act_as_part_of_the_operating_system'
         {
              Policy = 'Act_as_part_of_the_operating_system'
              Force = $True
              Identity = @('')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Generate_security_audits'
         {
              Policy = 'Generate_security_audits'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Profile_single_process'
         {
              Policy = 'Profile_single_process'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_symbolic_links'
         {
              Policy = 'Create_symbolic_links'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Modify_firmware_environment_values'
         {
              Policy = 'Modify_firmware_environment_values'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         UserRightsAssignment 'UserRightsAssignment(INF): Manage_auditing_and_security_log'
         {
              Policy = 'Manage_auditing_and_security_log'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }

         AccountPolicy 'SecuritySetting(INF): ResetLockoutCount'
         {
              Reset_account_lockout_counter_after = 15
              Name = 'Reset_account_lockout_counter_after'

         }

         AccountPolicy 'SecuritySetting(INF): MinimumPasswordAge'
         {
              Minimum_Password_Age = 1
              Name = 'Minimum_Password_Age'

         }

         AccountPolicy 'SecuritySetting(INF): MaximumPasswordAge'
         {
              Name = 'Maximum_Password_Age'
              Maximum_Password_Age = 60

         }

         AccountPolicy 'SecuritySetting(INF): LockoutBadCount'
         {
              Name = 'Account_lockout_threshold'
              Account_lockout_threshold = 10

         }

         AccountPolicy 'SecuritySetting(INF): PasswordComplexity'
         {
              Name = 'Password_must_meet_complexity_requirements'
              Password_must_meet_complexity_requirements = 'Enabled'

         }

         AccountPolicy 'SecuritySetting(INF): LockoutDuration'
         {
              Name = 'Account_lockout_duration'
              Account_lockout_duration = 15

         }

         SecurityOption 'SecuritySetting(INF): LSAAnonymousNameLookup'
         {
              Name = 'Network_access_Allow_anonymous_SID_Name_translation'
              Network_access_Allow_anonymous_SID_Name_translation = 'Disabled'

         }

         SecurityOption 'SecuritySetting(INF): ForceLogoffWhenHourExpire'
         {
              Name = 'Network_security_Force_logoff_when_logon_hours_expire'
              Network_security_Force_logoff_when_logon_hours_expire = 'Enabled'

         }

         AccountPolicy 'SecuritySetting(INF): PasswordHistorySize'
         {
              Name = 'Enforce_password_history'
              Enforce_password_history = 24

         }

         AccountPolicy 'SecuritySetting(INF): ClearTextPassword'
         {
              Name = 'Store_passwords_using_reversible_encryption'
              Store_passwords_using_reversible_encryption = 'Disabled'

         }

         AccountPolicy 'SecuritySetting(INF): MinimumPasswordLength'
         {
              Name = 'Minimum_Password_Length'
              Minimum_Password_Length = 14

         }

         <#UserRightsAssignment 'UserRightsAssignment(INF): Load_and_unload_device_drivers'
         {
              Policy = 'Load_and_unload_device_drivers'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Impersonate_a_client_after_authentication'
         {
              Policy = 'Impersonate_a_client_after_authentication'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-6', '*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Change_the_system_time'
         {
              Policy = 'Change_the_system_time'
              Force = $True
              Identity = @('*S-1-5-32-544', '*S-1-5-19')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Take_ownership_of_files_or_other_objects'
         {
              Policy = 'Take_ownership_of_files_or_other_objects'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_locally'
         {
              Policy = 'Deny_log_on_locally'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_as_a_batch_job'
         {
              Policy = 'Deny_log_on_as_a_batch_job'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Access_Credential_Manager_as_a_trusted_caller'
         {
              Policy = 'Access_Credential_Manager_as_a_trusted_caller'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Allow_log_on_through_Remote_Desktop_Services'
         {
              Policy = 'Allow_log_on_through_Remote_Desktop_Services'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Modify_firmware_environment_values'
         {
              Policy = 'Modify_firmware_environment_values'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Adjust_memory_quotas_for_a_process'
         {
              Policy = 'Adjust_memory_quotas_for_a_process'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Modify_an_object_label'
         {
              Policy = 'Modify_an_object_label'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Debug_programs'
         {
              Policy = 'Debug_programs'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_through_Remote_Desktop_Services'
         {
              Policy = 'Deny_log_on_through_Remote_Desktop_Services'
              Force = $True
              Identity = @('*S-1-5-32-546', '*S-1-5-113')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Lock_pages_in_memory'
         {
              Policy = 'Lock_pages_in_memory'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Increase_scheduling_priority'
         {
              Policy = 'Increase_scheduling_priority'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Shut_down_the_system'
         {
              Policy = 'Shut_down_the_system'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Change_the_time_zone'
         {
              Policy = 'Change_the_time_zone'
              Force = $True
              Identity = @('*S-1-5-32-544', '*S-1-5-19')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Allow_log_on_locally'
         {
              Policy = 'Allow_log_on_locally'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Create_a_pagefile'
         {
              Policy = 'Create_a_pagefile'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Restore_files_and_directories'
         {
              Policy = 'Restore_files_and_directories'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Create_a_token_object'
         {
              Policy = 'Create_a_token_object'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Create_permanent_shared_objects'
         {
              Policy = 'Create_permanent_shared_objects'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Profile_system_performance'
         {
              Policy = 'Profile_system_performance'
              Force = $True
              Identity = @('*S-1-5-80-3139157870-2983391045-3678747466-658725712-1809340420', '*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Create_global_objects'
         {
              Policy = 'Create_global_objects'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-6', '*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_as_a_service'
         {
              Policy = 'Deny_log_on_as_a_service'
              Force = $True
              Identity = @('*S-1-5-32-546')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Replace_a_process_level_token'
         {
              Policy = 'Replace_a_process_level_token'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
         {
              Policy = 'Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Force_shutdown_from_a_remote_system'
         {
              Policy = 'Force_shutdown_from_a_remote_system'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Access_this_computer_from_the_network'
         {
              Policy = 'Access_this_computer_from_the_network'
              Force = $True
              Identity = @('*S-1-5-11', '*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Deny_access_to_this_computer_from_the_network'
         {
              Policy = 'Deny_access_to_this_computer_from_the_network'
              Force = $True
              Identity = @('*S-1-5-114', '*S-1-5-32-546')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Perform_volume_maintenance_tasks'
         {
              Policy = 'Perform_volume_maintenance_tasks'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Act_as_part_of_the_operating_system'
         {
              Policy = 'Act_as_part_of_the_operating_system'
              Force = $True
              Identity = @('')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Generate_security_audits'
         {
              Policy = 'Generate_security_audits'
              Force = $True
              Identity = @('*S-1-5-20', '*S-1-5-19')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Profile_single_process'
         {
              Policy = 'Profile_single_process'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Create_symbolic_links'
         {
              Policy = 'Create_symbolic_links'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Back_up_files_and_directories'
         {
              Policy = 'Back_up_files_and_directories'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         <#UserRightsAssignment 'UserRightsAssignment(INF): Manage_auditing_and_security_log'
         {
              Policy = 'Manage_auditing_and_security_log'
              Force = $True
              Identity = @('*S-1-5-32-544')

         }#>

         SecurityOption 'SecuritySetting(INF): EnableGuestAccount'
         {
              Accounts_Guest_account_status = 'Disabled'
              Name = 'Accounts_Guest_account_status'

         }

         <#AccountPolicy 'SecuritySetting(INF): ResetLockoutCount'
         {
              Reset_account_lockout_counter_after = 15
              Name = 'Reset_account_lockout_counter_after'

         }#>

         <#AccountPolicy 'SecuritySetting(INF): MinimumPasswordAge'
         {
              Minimum_Password_Age = 1
              Name = 'Minimum_Password_Age'

         }#>

         <#AccountPolicy 'SecuritySetting(INF): MaximumPasswordAge'
         {
              Name = 'Maximum_Password_Age'
              Maximum_Password_Age = 60

         }#>

         <#AccountPolicy 'SecuritySetting(INF): LockoutBadCount'
         {
              Name = 'Account_lockout_threshold'
              Account_lockout_threshold = 10

         }#>

         <#AccountPolicy 'SecuritySetting(INF): PasswordComplexity'
         {
              Name = 'Password_must_meet_complexity_requirements'
              Password_must_meet_complexity_requirements = 'Enabled'

         }#>

         <#AccountPolicy 'SecuritySetting(INF): LockoutDuration'
         {
              Name = 'Account_lockout_duration'
              Account_lockout_duration = 15

         }#>

         <#SecurityOption 'SecuritySetting(INF): LSAAnonymousNameLookup'
         {
              Name = 'Network_access_Allow_anonymous_SID_Name_translation'
              Network_access_Allow_anonymous_SID_Name_translation = 'Disabled'

         }#>

         <#SecurityOption 'SecuritySetting(INF): ForceLogoffWhenHourExpire'
         {
              Name = 'Network_security_Force_logoff_when_logon_hours_expire'
              Network_security_Force_logoff_when_logon_hours_expire = 'Enabled'

         }#>

         <#AccountPolicy 'SecuritySetting(INF): PasswordHistorySize'
         {
              Name = 'Enforce_password_history'
              Enforce_password_history = 24

         }#>

         <#AccountPolicy 'SecuritySetting(INF): ClearTextPassword'
         {
              Name = 'Store_passwords_using_reversible_encryption'
              Store_passwords_using_reversible_encryption = 'Disabled'

         }#>

         <#AccountPolicy 'SecuritySetting(INF): MinimumPasswordLength'
         {
              Name = 'Minimum_Password_Length'
              Minimum_Password_Length = 14

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\EnablePlainTextPassword'
         {
              ValueName = 'EnablePlainTextPassword'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\requiresignorseal'
         {
              ValueName = 'requiresignorseal'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\ScRemoveOption'
         {
              ValueName = 'ScRemoveOption'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '1'

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Policies\Microsoft\Windows\Safer\CodeIdentifiers\AuthenticodeEnabled'
         {
              ValueName = 'AuthenticodeEnabled'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\Safer\CodeIdentifiers'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableInstallerDetection'
         {
              ValueName = 'EnableInstallerDetection'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole\setcommand'
         {
              ValueName = 'setcommand'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\enablesecuritysignature'
         {
              ValueName = 'enablesecuritysignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\CrashOnAuditFail'
         {
              ValueName = 'CrashOnAuditFail'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Session Manager\ProtectionMode'
         {
              ValueName = 'ProtectionMode'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\ScreenSaverGracePeriod'
         {
              ValueName = 'ScreenSaverGracePeriod'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '5'

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableSecureUIAPaths'
         {
              ValueName = 'EnableSecureUIAPaths'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictAnonymousSAM'
         {
              ValueName = 'RestrictAnonymousSAM'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinServerSec'
         {
              ValueName = 'NTLMMinServerSec'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
              ValueData = 537395200

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths\Machine'
         {
              ValueName = 'Machine'
              ValueType = 'MultiString'
              Key = 'HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths'
              ValueData = @('System\CurrentControlSet\Control\Print\Printers', 'System\CurrentControlSet\Services\Eventlog', 'Software\Microsoft\OLAP Server', 'Software\Microsoft\Windows NT\CurrentVersion\Print', 'Software\Microsoft\Windows NT\CurrentVersion\Windows', 'System\CurrentControlSet\Control\ContentIndex', 'System\CurrentControlSet\Control\Terminal Server', 'System\CurrentControlSet\Control\Terminal Server\UserConfig', 'System\CurrentControlSet\Control\Terminal Server\DefaultUserConfiguration', 'Software\Microsoft\Windows NT\CurrentVersion\Perflib', 'System\CurrentControlSet\Services\SysmonLog')

         }#>

         <#Registry 'Registry(INF): HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\SafeDllSearchMode'
         {
              ValueName = 'SafeDllSearchMode'
              ValueType = 'Dword'
              Key = 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon'
         {
              ValueName = 'AutoAdminLogon'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '0'

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorUser'
         {
              ValueName = 'ConsentPromptBehaviorUser'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\EveryoneIncludesAnonymous'
         {
              ValueName = 'EveryoneIncludesAnonymous'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Tcpip6\Parameters\DisableIPSourceRouting'
         {
              ValueName = 'DisableIPSourceRouting'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Tcpip6\Parameters'
              ValueData = 2

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\PromptOnSecureDesktop'
         {
              ValueName = 'PromptOnSecureDesktop'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictAnonymous'
         {
              ValueName = 'RestrictAnonymous'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\RequireSecuritySignature'
         {
              ValueName = 'RequireSecuritySignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\UseMachineId'
         {
              ValueName = 'UseMachineId'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\allownullsessionfallback'
         {
              ValueName = 'allownullsessionfallback'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Session Manager\Kernel\ObCaseInsensitive'
         {
              ValueName = 'ObCaseInsensitive'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager\Kernel'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\NoLMHash'
         {
              ValueName = 'NoLMHash'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LmCompatibilityLevel'
         {
              ValueName = 'LmCompatibilityLevel'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 5

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DontDisplayLastUserName'
         {
              ValueName = 'DontDisplayLastUserName'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\EnableSecuritySignature'
         {
              ValueName = 'EnableSecuritySignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinClientSec'
         {
              ValueName = 'NTLMMinClientSec'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
              ValueData = 537395200

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\SCENoApplyLegacyAuditPolicy'
         {
              ValueName = 'SCENoApplyLegacyAuditPolicy'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\ForceGuest'
         {
              ValueName = 'ForceGuest'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin'
         {
              ValueName = 'ConsentPromptBehaviorAdmin'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 2

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ShutdownWithoutLogon'
         {
              ValueName = 'ShutdownWithoutLogon'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }#>

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\MaxDevicePasswordFailedAttempts'
         {
              ValueName = 'MaxDevicePasswordFailedAttempts'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 10

         }

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateDASD'
         {
              ValueName = 'AllocateDASD'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '0'

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\requiresecuritysignature'
         {
              ValueName = 'requiresecuritysignature'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\requirestrongkey'
         {
              ValueName = 'requirestrongkey'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD'
         {
              ValueName = 'DisableCAD'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\sealsecurechannel'
         {
              ValueName = 'sealsecurechannel'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole\securitylevel'
         {
              ValueName = 'securitylevel'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LDAP\LDAPClientIntegrity'
         {
              ValueName = 'LDAPClientIntegrity'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LDAP'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Tcpip\Parameters\DisableIPSourceRouting'
         {
              ValueName = 'DisableIPSourceRouting'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Tcpip\Parameters'
              ValueData = 2

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\maximumpasswordage'
         {
              ValueName = 'maximumpasswordage'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 30

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA'
         {
              ValueName = 'EnableLUA'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\autodisconnect'
         {
              ValueName = 'autodisconnect'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 15

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableUIADesktopToggle'
         {
              ValueName = 'EnableUIADesktopToggle'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableVirtualization'
         {
              ValueName = 'EnableVirtualization'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse'
         {
              ValueName = 'LimitBlankPasswordUse'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\disablepasswordchange'
         {
              ValueName = 'disablepasswordchange'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown'
         {
              ValueName = 'ClearPageFileAtShutdown'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager\Memory Management'
              ValueData = 0

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\PasswordExpiryWarning'
         {
              ValueName = 'PasswordExpiryWarning'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = 14

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\FilterAdministratorToken'
         {
              ValueName = 'FilterAdministratorToken'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\RestrictNullSessAccess'
         {
              ValueName = 'RestrictNullSessAccess'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths\Machine'
         {
              ValueName = 'Machine'
              ValueType = 'MultiString'
              Key = 'HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths'
              ValueData = @('System\CurrentControlSet\Control\ProductOptions', 'System\CurrentControlSet\Control\Server Applications', 'Software\Microsoft\Windows NT\CurrentVersion')

         }#>

         Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\CachedLogonsCount'
         {
              ValueName = 'CachedLogonsCount'
              ValueType = 'String'
              Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
              ValueData = '4'

         }

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters\enableforcedlogoff'
         {
              ValueName = 'enableforcedlogoff'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers\AddPrinterDrivers'
         {
              ValueName = 'AddPrinterDrivers'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters\signsecurechannel'
         {
              ValueName = 'signsecurechannel'
              ValueType = 'Dword'
              Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
              ValueData = 1

         }#>

         <#Registry 'Registry(INF): HKLM:\SYSTEM\CurrentControlSet\Services\Eventlog\Security\WarningLevel'
         {
              ValueName = 'WarningLevel'
              ValueType = 'Dword'
              Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\Eventlog\Security'
              ValueData = 90

         }#>

         <#Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\InactivityTimeoutSecs'
         {
              ValueName = 'InactivityTimeoutSecs'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
              ValueData = 900

         }#>

	}
}
DSCFromGPO -OutputPath 'C:\BaselineManagement\Output'
