# Building a simple C++ app using VS Code

## Introduction

This repository is just an example of building a simple C++ app using VS Code. It is intended for reference purposes as I typically use VS Community Edition for my Windows C++ development, but I also wanted to know how to be able to build using VS Code.

It is based on [documentation from Microsoft](https://devblogs.microsoft.com/cppblog/building-your-c-application-with-visual-studio-code/) (including their [example hello world app](https://devblogs.microsoft.com/wp-content/uploads/sites/9/2019/02/helloworldcpp-vscode.zip)), but updated to reflect the newer version of the [tasks.json format](https://go.microsoft.com/fwlink/?LinkId=733558).

## Using this repo

You'll need [download VS Code](https://code.visualstudio.com/) (I used 1.35.1 for creating this repo) and to clone this repo 

### For helloworld example

Open `hello-world` in VS Code. Update line 3 in `build.bat` file to reflect your installation's `vcvarsall.bat` location. You should then be able to build using `CTRL+B`.

### For DLL example

The DLL example defines a different task (`msvc build`) for building via MSVC in addition to `Debug`. If building with `Debug`, follow the procedure in the previous example. If building with `msvc build`, [**you'll need to launch VS Code with the x64 Native Commands Tools Prompt for Visual Studio 2019**](https://docs.microsoft.com/en-us/cpp/build/how-to-enable-a-64-bit-visual-cpp-toolset-on-the-command-line?view=vs-2019). This will set your environment for x64 builds. Regular Developer Command Prompts do not do this, and this will lead to encountering `fatal error LNK1112: module machine type 'x64' conflicts with target machine type 'X86'` errors, which would otherwise only go away by removing the `/MACHINE:X64` linker argument.

## Useful resources

* [VS 2019 compiler flags.](https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-alphabetically?view=vs-2019)
* [VS 2019 linker flags.](https://docs.microsoft.com/en-us/cpp/build/reference/linker-options?view=vs-2019)
* [Configuring VS Code for Microsoft C++](https://code.visualstudio.com/docs/cpp/config-msvc)
* [How to: Enable a 64-Bit, x64 hosted MSVC toolset on the command line](https://docs.microsoft.com/en-us/cpp/build/how-to-enable-a-64-bit-visual-cpp-toolset-on-the-command-line?view=vs-2019)
* [VS Code Variables Reference](https://code.visualstudio.com/docs/editor/variables-reference)
