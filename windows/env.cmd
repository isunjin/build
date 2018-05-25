
SET TOOLS=%JM_ROOT%tools
SET SOFTWARES=%JM_ROOT%softwares
SET CMAKE_HOME=%TOOLS%\cmake-3.6.1-win64-x64
REM SET JAVA_HOME=%TOOLS%\zulu1.7.0_55-7.4.0.5-win64
SET JAVA_HOME=%TOOLS%\zulu8.25.0.1-jdk8.0.152-win_x64
SET M2_HOME=%TOOLS%\apache-maven-3.3.9
SET PROTO_HOME=%TOOLS%\protoc-2.5.0-win32
REM SET PYTHON_HOME=%TOOLS%\python-3.5.2-embed-amd64
SET PYTHON_HOME=%TOOLS%\Python2.7
SET SUBLIME_HOME=%TOOLS%\sublime3
SET ZLIB_JM_ROOT=%TOOLS%\zlib128
SET ZLIB_HOME=%ZLIB_JM_ROOT%\include
SET OPENSSL_HOME=%TOOLS%\openssl-0.9.8ze-x64_86-win64
SET MAVEN_OPTS=-Xms256m -Xmx512m
SET GIT_HOME=%TOOLS%\git-2.9.2
SET Platform=x64
SET WINUTIL=%TOOLS%\windows
SET JAVA_OPTS_1="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"
SET YARNONEBOX_HOME=%TOOLS%\yarnOnebox
SET TEZ_PREFIX=%JM_ROOT%src\ApacheTez-Scope
SET TEZ_JARS=%TEZ_PREFIX%\tez-dist\target\tez-0.9.1-SNAPSHOT-minimal
SET COSMOS_GIT=%JM_ROOT%src\cosmos
SET TEZ_CONF_DIR=%JM_ROOT%src\conf
SET HADOOP_CLASSPATH=%TEZ_CONF_DIR%;%TEZ_JARS%\*;%TEZ_JARS%\lib\*

SET PATH=%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin\server;%M2_HOME%\bin;%PROTO_HOME%\bin;%CMAKE_HOME%\bin;%GIT_HOME%\bin;%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%ZLIB_JM_ROOT%;%SUBLIME_HOME%;%IDEA_HOME%;%OPENSSL_HOME%;%YARNONEBOX_HOME%;%WINUTIL%;%PATH%

REM alias
doskey tez=cd %TEZ_PREFIX%
doskey root=cd %JM_ROOT%
doskey cosmos=cd %COSMOS_GIT%
doskey startyarn=%JM_ROOT%\yarnOnebox.cmd
doskey stopyarn=stop-dfs.cmd && stop-yarn.cmd
doskey updatetez=%JM_ROOT%\copy_to_hdfs.cmd
doskey bd=cd %TEZ_PREFIX% && mvn clean package -DskipTests=true -Dmaven.javadoc.skip=true -pl !tez-ui

REM Yarn one box

call %JM_ROOT%\yarnonenode.cmd

REM import visual studio 2015

%comspec% /k ""C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"" amd64
