@echo off
goto start
route print
route delete 10.0.0.0
route add 10.0.0.0 mask 255.255.255.0 192.168.3.23 -p
:start
set IP1=10.0.0.0
set IP2=
::set /p IP1=目标网段: 
set /p IP2=请输入主控板网口1的IP地址: 
echo route add %IP1% mask 255.255.255.0 %IP2% -p
route delete 10.0.0.0
route add %IP1% mask 255.255.255.0 %IP2% -p
route print
echo 请在以上打印信息中查看"IPV4路由表"----“永久路由:”项。
echo 如没有看到输入的网口1的IP：%IP2%，请确定输入的IP地址合法！
pause
