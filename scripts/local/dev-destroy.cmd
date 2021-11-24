@echo off

pushd "%~dp0.."

vagrant destroy -f

if errorlevel 1 exit 1

if exist ".vagrant" (
    rd /s /q ".vagrant"
)

popd
