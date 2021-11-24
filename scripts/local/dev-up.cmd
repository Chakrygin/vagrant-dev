@echo off

pushd "%~dp0.."

vagrant up

if errorlevel 1 exit 1

set YANDEX_DISK_PATH=%UserProfile%\YandexDisk\.dev

if exist "%YANDEX_DISK_PATH%" (
    echo Remove directory "%YANDEX_DISK_PATH%"...
    rd /s /q "%YANDEX_DISK_PATH%"
)

for /d /r ".vagrant\machines" %%a in (node-*) do (
    echo Create directory "%YANDEX_DISK_PATH%\%%~na"...
    md "%YANDEX_DISK_PATH%\%%~na"

    echo Copy file "%%a\virtualbox\private_key" to "%YANDEX_DISK_PATH%\%%~na\private_key"...
    copy "%%a\virtualbox\private_key" "%YANDEX_DISK_PATH%\%%~na\private_key" 1>NUL
)

popd
