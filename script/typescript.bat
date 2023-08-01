@echo off
pushd 
cd %~dp0

rem protobuf TypeScript tools

set CATCLI_ROOT=..\..\catcli

cd ..\tmp
echo "-- clean protofile and bundles."
del /S/Q protobuf\protofile\*
del /S/Q protobuf\bundles\*
echo "-- copy protofile."
copy ..\protobuf\* protobuf\protofile\.

echo "-- create bundles."
call pb-egret generate

echo "-- clean project old file."
del /S/Q %CATCLI_ROOT%\bin\libs\protobuf-*.js
del /S/Q %CATCLI_ROOT%\libs\protobuf-*.d.ts

echo "-- copy project library and bundles."
copy protobuf\library\*.js %CATCLI_ROOT%\bin\libs\.
copy protobuf\bundles\*.js %CATCLI_ROOT%\bin\libs\.
copy protobuf\library\*.ts %CATCLI_ROOT%\libs\.
copy protobuf\bundles\*.ts %CATCLI_ROOT%\libs\.

echo "-- complete."

popd
@echo on