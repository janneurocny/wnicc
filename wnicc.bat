@echo off
echo Windows NIC Configurator
echo Jan Neurocny - NeuroLabs
echo https://neurolabs.sk
echo https://github.com/janneurocny
echo ------------------------------
@echo off
echo:
set nicDescription='Realtek PCIe GbE Family Controller'

echo Enabling NIC...
wmic path win32_networkadapter where "Description = %nicDescription%" call enable > nul

echo NIC Strating...
timeout /t 5 /NOBREAK > nul

echo:

echo Set NIC to DHCP...
wmic nicconfig where "Description = %nicDescription%" call EnableDHCP > nul

echo Success!

exit

