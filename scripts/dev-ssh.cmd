@echo off

wt new-tab -d "%~dp0.." cmd /C vagrant ssh "node-1"
