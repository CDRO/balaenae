echo off
docker login -u opendndu
FOR /F "tokens=*" %%i in ('type .env') do SET %%i
FOR /F "tokens=* USEBACKQ" %%F IN (`type build-command`) DO %%F
echo on