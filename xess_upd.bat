@echo off
echo This script will fetch the XeSS 2.0.1 SDK from Github and fetch and utilize 7zx and 7za 2409 CLI to extract the necessary files
echo All files are provided from their official Github repositories and this batch file is open-source too, so this is the cleaanest way to do this task.
IF NOT exist libxess.dll GOTO end
IF NOT exist libxell.dll.bak (
ren libxell.dll libxell.dll.bak
ren libxess.dll libxess.dll.bak
ren libxess_dx11.dll libxess_dx11.dll.bak
ren libxess_fg.dll libxess_fg.dll.bak
)
bitsadmin /transfer "7zr" https://github.com/ip7z/7zip/releases/download/24.09/7zr.exe "%cd%\7zr.exe"
bitsadmin /transfer "7z-extra" https://github.com/ip7z/7zip/releases/download/24.09/7z2409-extra.7z "%cd%\7z2409-extra.7z"
7zr.exe x -r -aoa "7z2409-extra.7z" "x64" *.exe
echo F|xcopy x64\7za.exe 7za.exe
bitsadmin /transfer "XeSSSDK" https://github.com/intel/xess/releases/download/v2.0.1/XeSS_SDK_2.0.1.zip "%cd%\XeSS_SDK_2.0.1.zip"
7za.exe x -r -aoa "XeSS_SDK_2.0.1.zip" "bin" *.dll
echo F|xcopy bin\libxell.dll libxell.dll
echo F|xcopy bin\libxess.dll libxess.dll
echo F|xcopy bin\libxess_dx11.dll libxess_dx11.dll
echo F|xcopy bin\libxess_fg.dll libxess_fg.dll
RMDIR /Q/S bin
RMDIR /Q/S x64
RMDIR /Q/S arm64
del /F /Q XeSS_SDK_2.0.1.zip
del /F /Q 7z2409-extra.7z
pause
exit

:end
echo It appears that you did not place this batch file in the correct game subdirectory.
echo Exiting...
pause
