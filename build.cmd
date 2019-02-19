@ECHO OFF

REM Adjust these lines to your environment
SET JAVA_HOME=C:\Java\amd64\jdk-11.0.2
SET MINGW_HOME=C:\Mingw\x\x86_64-8.1.0-win32-sjlj-rt_v6-rev0\mingw64

REM Do not change the following lines
SET PATH=%MINGW_HOME%\bin;%JAVA_HOME%\bin;%PATH%
SET CFLAGS=-I. -I%JAVA_HOME%/include -I%JAVA_HOME%/include/win32
SET LDFLAGS=-L%JAVA_HOME%/lib -ljvm
SET CGO_CFLAGS=%CFLAGS%
SET CGO_LDFLAGS=%LDFLAGS%

rd  /q /s out 2>NUL

mkdir out
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%

javac -h . -d out Hello.java
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%

go build -buildmode=c-shared -o out\hello.dll .
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%

java -Xcheck:jni -Djava.library.path=out -cp out Hello
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
