@echo off
cls
echo ****************************************[ System Specs Check ]****************************************
echo.
echo						    %DATE%
echo.
echo **********************************************[ Author ]**********************************************
echo.
echo Author : [ Fr34K ]
echo Tested On : [ Windows 10 Pro ; Version 20H2 ]
echo.
echo *********************************************[ Hardware ]*********************************************
echo.
systeminfo | find "Host Name"
systeminfo | find "System Manufacturer"
systeminfo | find "System Model"
systeminfo | find "System Type"
echo Processor:		   %PROCESSOR_IDENTIFIER%
systeminfo | find "Boot Device"
systeminfo | find "System Locale"
systeminfo | find "Input Locale"
systeminfo | find "Total Physical Memory"
echo.
echo ********************************************[  Hard Disk(s)  ]*******************************************
echo.
echo Disk Information:
echo.
wmic diskdrive get model,size,partitions,mediatype,serialnumber
echo.
echo Drives :
echo.
wmic logicaldisk get caption,size,freespace,description,drivetype
echo.
echo Note : [ Size of the Hard Disk(s) is shown in 'Byte']
echo.
echo ***********************************************[ CPU ]************************************************
echo.
wmic cpu get status,caption,manufacturer,maxclockspeed,name,deviceid,socketdesignation
echo.
echo ***********************************************[ GPU ]************************************************
echo.
wmic path win32_videocontroller get name,currentrefreshrate,adapterram,driverversion,description,videomodedescription
echo.
echo ******************************************[Operating System]******************************************
echo.
systeminfo | find "OS Name"
systeminfo | find "OS Version:"
systeminfo | find "OS Manufacturer"
systeminfo | find "OS Configuration"
systeminfo | find "OS Build Type"
systeminfo | find "Registered Owner"
systeminfo | find "Product ID"
systeminfo | find "Original Install Date"
systeminfo | find "System Boot Time"
systeminfo | find "Windows Directory"
systeminfo | find "System Directory"
echo.
pause
exit

