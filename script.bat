@echo off

if %1% == "lock" (
    sleep %2%
    rundll32.exe user32.dll, LockWorkStation
)

if %1% == "shutdown" (
    shutdown -s -t %2%
)