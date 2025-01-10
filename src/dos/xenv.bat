@echo off

REM xenv - A lightweight, cross-platform tool for managing environment configurations
REM Version 0.0.1
REM Copyright (c) 2025 Nathan Gill, under the GNU GPL v3. See LICENSE for details.

REM DOS Edition




REM Set xenv version
set "XENV_VERSION=0.0.1"

REM Goto the main entry-point
goto :main




REM --------------------------------------------------------
REM parseArgs - Parse command line arguments
REM --------------------------------------------------------
:parseArgs

set "action="
set "envName="

REM Set the action variable based on arg 1
:parseArgs_setAction

if "%~1"=="config" (
  set "action=config"
) else if "%~1"=="load" (
  set "action=load"
) else if "%~1"=="unload" (
  set "action=unload"
) else if "%~1"=="delete" (
  set "action=delete"
)

REM Set the target config based on arg 1
:parseArgs_setEnv

if not "%~2"=="" (
  set "envName=%~2"
)

goto :parseArgs_exit




REM --------------------------------------------------------
REM basicCheckArgs - Simple validation of arguments
REM --------------------------------------------------------
:basicCheckArgs

if "%action%"=="" (
  goto helpAndExit
)

if "%envName%"=="" (
  goto helpAndExit
)

goto :basicCheckArgs_exit




REM --------------------------------------------------------
REM helpAndExit - Display help text, then quit
REM --------------------------------------------------------
:helpAndExit

echo:
echo xenv
echo A lightweight, cross-platform tool for managing environment configurations.
echo Version %XENV_VERSION%
echo Copyright (c) 2025 Nathan Gill, under the GNU GPL v3. See LICENSE for details.
echo:
echo usage: xenv ^<command^> ^<environment name^>
echo:
echo Supported commands:
echo     config ^<new environment name^> - Configure a new environment
echo     load ^<environment name^>       - Loads the named environment
echo     unload ^<environment name^>     - Unload a previously loaded environment
echo     delete ^<environment name^>     - Delete an environment configuration
echo:

:helpAndExit_exit

exit /b



REM --------------------------------------------------------
REM configureNew - Configure a new environment
REM --------------------------------------------------------
:configureNew





REM --------------------------------------------------------
REM main - Main script entry-point
REM --------------------------------------------------------
:main

goto :parseArgs
:parseArgs_exit

goto :basicCheckArgs
:basicCheckArgs_exit

:eof