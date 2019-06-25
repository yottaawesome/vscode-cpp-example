@echo off
REM This needs to be changed to reflect your installation
call "A:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64

REM https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-alphabetically?view=vs-2019
set compilerflags=/Od /Zi /EHsc /std:c++latest 
REM https://docs.microsoft.com/en-us/cpp/build/reference/linker-options?view=vs-2019
set linkerflags=/OUT:hello.exe

cl.exe %compilerflags% helloworld.cpp /link %linkerflags%