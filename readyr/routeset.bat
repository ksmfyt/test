@echo off
goto start
route print
route delete 10.0.0.0
route add 10.0.0.0 mask 255.255.255.0 192.168.3.23 -p
:start
set IP1=10.0.0.0
set IP2=
::set /p IP1=Ŀ������: 
set /p IP2=���������ذ�����1��IP��ַ: 
echo route add %IP1% mask 255.255.255.0 %IP2% -p
route delete 10.0.0.0
route add %IP1% mask 255.255.255.0 %IP2% -p
route print
echo �������ϴ�ӡ��Ϣ�в鿴"IPV4·�ɱ�"----������·��:���
echo ��û�п������������1��IP��%IP2%����ȷ�������IP��ַ�Ϸ���
pause
