@echo off

@REM wt new-tab -d "%~dp0.." cmd /C vagrant ssh "node-1"

ssh -q
    -o UserKnownHostsFile=/dev/null \
    -o StrictHostKeyChecking=no \
    -i ~/.vagrant.d/insecure_private_key \
    vagrant@localhost \
    -p $PORT \
    "$@"

ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i .\.vagrant\machines\node-1\virtualbox\private_key vagrant@192.168.1.101
