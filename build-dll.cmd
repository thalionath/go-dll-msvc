set PATH=C:\TDM-GCC-64\bin;%PATH%
go build -o foo.dll -buildmode=c-shared

call "%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" x64

rem https://stackoverflow.com/questions/9946322/how-to-generate-an-import-library-lib-file-from-a-dll
echo LIBRARY FOO > foo.def
echo EXPORTS >> foo.def
for /f "skip=19 tokens=4" %%A in ('dumpbin /exports foo.dll') do echo %%A >> foo.def
lib /def:foo.def /out:foo.lib /machine:x64
