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
git clone https://github.com/prajeshElEvEn/shush.git
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

  set(SOURCES src/main.cpp)

  add_executable(<your_project_name> ${SOURCES})
                 ^^^^^^^^^^^^^^^^^^^
  ```

  > Read more on [CMakeLists.txt](https://www.jetbrains.com/help/clion/cmakelists-txt-file.html#root-sub)

- Now, in `shu.sh`, change `./code` at `line 34` to `./<your_project_name>`

## Resources

- Tutorial on [Making cpp packages with CMake](https://cmake.org/cmake/help/latest/guide/tutorial/index.html#guide:CMake%20Tutorial)
