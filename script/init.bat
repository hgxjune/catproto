@echo off
pushd 
cd %~dp0

cd ..
mkdir tmp
cd tmp

call pb-egret add

popd
@echo on