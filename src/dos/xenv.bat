@echo off

REM xenv - A lightweight, cross-platform tool for managing environment configurations
REM Version 0.0.1
REM Copyright (c) 2025 Nathan Gill, under the GNU GPL v3. See LICENSE for details.

REM DOS Edition




REM Set xenv version
set XENV_VERSION=0.0.1

REM Goto the main entry-point
goto :main




REM --------------------------------------------------------
REM parseArg - Parse command line arguments
REM --------------------------------------------------------
:parseArg

set action=
set envName=

if "%1"=="config" set action=config
if "%1"=="load" set action=load
if "%1"=="unload" set action=unload
if "%1"=="delete" set action=delete

if not "%2"=="" set envName=%2

goto :_arseArg




REM --------------------------------------------------------
REM checkArg - Simple validation of arguments
REM --------------------------------------------------------
:checkArg

if "%action%"=="" goto help
if "%envName%"=="" goto help

goto :_heckArg




REM --------------------------------------------------------
REM helpAndExit - Display help text, then quit
REM --------------------------------------------------------
:help

echo:
echo xenv
echo A lightweight, cross-platform tool for managing environment configurations.
echo Version %XENV_VERSION%
echo Copyright (c) 2025 Nathan Gill, under the GNU GPL v3. See LICENSE for details.
echo:
echo usage: xenv [command] [environment name]
echo:
echo Supported commands:
echo     config [new environment name] - Configure a new environment
echo     load [environment name]       - Loads the named environment
echo     unload [environment name]     - Unload a previously loaded environment
echo     delete [environment name]     - Delete an environment configuration
echo:

:_elp

goto :eof



REM --------------------------------------------------------
REM configureNew - Configure a new environment
REM --------------------------------------------------------
:configureNew





REM --------------------------------------------------------
REM main - Main script entry-point
REM --------------------------------------------------------
:main

goto :parseArg
:_arseArg

goto :checkArg
:_heckArg

:eof