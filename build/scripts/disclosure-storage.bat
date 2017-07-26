@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  disclosure-storage startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and DISCLOSURE_STORAGE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\jnr-enxio-0.16.jar;%APP_HOME%\lib\asm-commons-5.0.3.jar;%APP_HOME%\lib\disclosure-storage-0.1.jar;%APP_HOME%\lib\jackson-databind-2.8.5.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\core-2.2.2.jar;%APP_HOME%\lib\rxjava-2.1.1.jar;%APP_HOME%\lib\jnr-posix-3.0.35.jar;%APP_HOME%\lib\reactive-streams-1.0.0.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\jnr-x86asm-1.0.2.jar;%APP_HOME%\lib\bcprov-jdk15on-1.57.jar;%APP_HOME%\lib\jffi-1.2.15-native.jar;%APP_HOME%\lib\asm-util-5.0.3.jar;%APP_HOME%\lib\rxjava-1.2.4.jar;%APP_HOME%\lib\scrypt-1.4.0.jar;%APP_HOME%\lib\jackson-annotations-2.8.0.jar;%APP_HOME%\lib\jnr-unixsocket-0.18.jar;%APP_HOME%\lib\asm-5.0.3.jar;%APP_HOME%\lib\commons-cli-1.4.jar;%APP_HOME%\lib\jnr-ffi-2.1.4.jar;%APP_HOME%\lib\jfiglet-0.0.8.jar;%APP_HOME%\lib\javapoet-1.9.0.jar;%APP_HOME%\lib\jackson-core-2.8.9.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\asm-analysis-5.0.3.jar;%APP_HOME%\lib\jffi-1.2.15.jar;%APP_HOME%\lib\asm-tree-5.0.3.jar;%APP_HOME%\lib\jnr-constants-0.9.8.jar

@rem Execute disclosure-storage
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %DISCLOSURE_STORAGE_OPTS%  -classpath "%CLASSPATH%" exec.Gateway %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable DISCLOSURE_STORAGE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%DISCLOSURE_STORAGE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
