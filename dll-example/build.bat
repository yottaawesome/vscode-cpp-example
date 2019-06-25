@echo off
REM This needs to be changed to reflect your installation
call "A:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64

set outputpath="build\debug"

REM https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-alphabetically?view=vs-2019
set compilerflags=/JMC /permissive- /GS /W3 /Zc:wchar_t /ZI /Gm- /Od /sdl /FS /Fd"%outputpath%\vc142.pdb" /Zc:inline /fp:precise /D "_WINDLL" /D "_MBCS" /errorReport:prompt /WX- /Zc:forScope /RTC1 /Gd /MD /FC /EHsc /nologo /diagnostics:column /Fo"%outputpath%\hello.obj"
REM https://docs.microsoft.com/en-us/cpp/build/reference/linker-options?view=vs-2019
set linkerflags=/OUT:"%outputpath%\hello.dll" /NXCOMPAT /PDB:"%outputpath%\hello.pdb" /DYNAMICBASE "kernel32.lib" "user32.lib" "gdi32.lib" "winspool.lib" "comdlg32.lib" "advapi32.lib" "shell32.lib" "ole32.lib" "oleaut32.lib" "uuid.lib" "odbc32.lib" "odbccp32.lib" /IMPLIB:"%outputpath%\hello.lib" /DLL /MACHINE:X64 /INCREMENTAL /SUBSYSTEM:CONSOLE /ERRORREPORT:PROMPT /NOLOGO /LIBPATH:"A:\Program Files (x86)\Microsoft Visual Studio\Shared\Python37_64\libs" /TLBID:1 

cl.exe %compilerflags% dll.cpp /link %linkerflags%