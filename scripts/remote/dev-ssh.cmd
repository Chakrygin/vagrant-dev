@echo off

pushd "%~dp0.."

set PRIVATE_KEY_PATH=%UserProfile%\YandexDisk\.dev\node-1\private_key

wt new-tab -d "%~dp0.." cmd /C ssh ^
    -q ^
    -o "UserKnownHostsFile=/dev/null" ^
    -o "StrictHostKeyChecking=no" ^
    -i "%PRIVATE_KEY_PATH%" ^
    "vagrant@192.168.1.101" ^
    %*

popd
