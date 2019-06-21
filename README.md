# Building a simple C++ app using VS Code

## Introduction

This repository is just an example of building a simple C++ app using VS Code. It is intended for reference purposes as I typically use VS Community Edition for my Windows C++ development, but I also wanted to know how to be able to build using VS Code.

It is based on [documentation from Microsoft](https://devblogs.microsoft.com/cppblog/building-your-c-application-with-visual-studio-code/), but updated to reflect the newer version of the [tasks.json format](https://go.microsoft.com/fwlink/?LinkId=733558).

## Using this repo

Simply [download VS Code](https://code.visualstudio.com/) (I used 1.35.1 for creating this repo), clone this repo, and open this folder. Update line 3 in `build.bat` file to reflect your installation's `vcvarsall.bat` location. You should then be able to build using `CTRL+B`.

## Useful resources

* [VS 2019 compiler flags.](https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-alphabetically?view=vs-2019)
* [VS 2019 linker flags.](https://docs.microsoft.com/en-us/cpp/build/reference/linker-options?view=vs-2019)
