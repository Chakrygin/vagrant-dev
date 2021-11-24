@echo off

pushd "%~dp0.."

for %%a in (
    ".vagrant\machines\node-1\virtualbox\private_key"
    "%UserProfile%\YandexDisk\.dev\private_key"
) do (
    if "%PRIVATE_KEY_PATH%" == "" (
        if exist "%%~a" (
            echo %%~a
        )
    )
)

if not exist "%PRIVATE_KEY_PATH%" (
    echo ERROR
    exit 1
)

@REM If "%%~aZ" GEq "d" (
@REM         GoTo DIR
@REM     ) Else (
@REM         If "%%~aZ" GEq "-" (
@REM             GoTo FILE
@REM         ) Else (
@REM             GoTo NOACCESS
@REM         )
@REM     )

@REM wt new-tab -d "%~dp0.." cmd /C ssh ^
@REM     -q ^
@REM     -o "UserKnownHostsFile=/dev/null" ^
@REM     -o "StrictHostKeyChecking=no" ^
@REM     -i .\.vagrant\machines\node-1\virtualbox\private_key ^
@REM     "vagrant@192.168.1.101"


@REM @REM wt new-tab -d "%~dp0.." cmd /C vagrant ssh "node-1"

@REM ssh -q
@REM     -o UserKnownHostsFile=/dev/null \
@REM     -o StrictHostKeyChecking=no \
@REM     -i ~/.vagrant.d/insecure_private_key \
@REM     vagrant@localhost \
@REM     -p $PORT \
@REM     "$@"

@REM ssh

popd
