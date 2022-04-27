set MSVC_BUILDTOOLS_2019=%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build
call "%MSVC_BUILDTOOLS_2019%\vcvarsall.bat" x64
set CC=cl.exe
rem does not work
go build -o foo.dll -buildmode=c-shared
