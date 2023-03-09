@echo off

rem Set the new DNS and IPv6 probe host
set new_dns_probe_host=50.116.54.56
set new_ipv6_probe_host=2600:3c03::f03c:93ff:fe4e:cee1
set new_dns_probe_host_name=txr8v9s2ytg7xr.us

rem Update the registry values with the new DNS and IPv6 probe host
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v ActiveDnsProbeContent /t REG_SZ /d %new_dns_probe_host% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v ActiveDnsProbeContentV6 /t REG_SZ /d %new_ipv6_probe_host% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v ActiveDnsProbeHost /t REG_SZ /d %new_dns_probe_host_name% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v ActiveDnsProbeHostV6 /t REG_SZ /d %new_dns_probe_host_name% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v ActiveDnsProbeContent /t REG_SZ /d %new_dns_probe_host% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v ActiveDnsProbeContentV6 /t REG_SZ /d %new_ipv6_probe_host% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v ActiveDnsProbeHost /t REG_SZ /d %new_dns_probe_host_name% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v ActiveDnsProbeHostV6 /t REG_SZ /d %new_dns_probe_host_name% /f

echo The ActiveDnsProbeContent has been successfully changed to %new_dns_probe_host%
echo The ActiveDnsProbeContentV6 has been successfully changed to %new_ipv6_probe_host%
echo The ActiveDnsProbeHost has been successfully changed to %new_dns_probe_host_name%
echo The ActiveDnsProbeHostV6 has been successfully changed to %new_dns_probe_host_name%
pause