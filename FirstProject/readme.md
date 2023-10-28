This project build an simple application that print some messages. The core of this project was to understand CMake.

In this project we understand the following concepts:
- Variable and Options
- Sources and headers
- Run process
- Create a dependency graph with Graphviz
- Enable Unit tests 
- Enable Compiler Warnings
- Enable Sanitizers
- Enable IPO/LTO


To test the code run the following commands:
```
make prepare
cd build
cmake .. -DCOMPILE_EXECUTABLE=ON 
make
```

If you want to enable the unit test add the following flag -DENABLE_TESTING=ON to the cmake command.

There the files generated:
- ./build/app/Executable, the application
- ./build/tests/unit_test, if DENABLE_TESTING=ON