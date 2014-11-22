cytify
======

**Cython INotify library for file monitoring**

cytify is currently undergoing development, do not use it until a beta or stable release is available.
Currently understanding how cython and c programs work with each other;

cytify current does the following:
- Imports `sys/inotify.h`
- Defines struct and methods
- Prints out a simple test case after running `./test.py`
- Contains `setup.py`.

To use in its current state (pointless atm):

    python ./setup.py build_ext --inplace
    ./test

