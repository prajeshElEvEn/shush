# shu.sh

cpp packages template.

## Pre-requisites

- C++ Compiler
  - [linux](https://code.visualstudio.com/docs/cpp/config-linux#_prerequisites)
  - [windows](https://code.visualstudio.com/docs/cpp/config-mingw#_prerequisites)
- [CMake](https://cmake.org/download/)

## Usage

- Clone the repository

```bash
git clone
cd shush
```

- Run `./shu.sh` with `-r` flag

```bash
./shu.sh -r
```

## Configure

> ⚠️ strictly for developers or you might break the code

- If you wish to change project name from `code` to a different name in `CMakeLists.txt`

```txt
cmake_minimum_required(VERSION 3.10)
project(<your_project_name>)
        ^^^^^^^^^^^^^^^^^^^
add_executable(<your_project_name> src/main.cpp)
               ^^^^^^^^^^^^^^^^^^^
```

> change `code` to a different name

- Now, in `shu.sh`, change `./code` at `line 34` to `./<your_project_name>`
