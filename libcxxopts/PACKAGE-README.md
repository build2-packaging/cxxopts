# cxxopts - C++ command line option parser

This is the `build2` package for `cxxopts`, a lightweight C++ command line option parser library.

## Usage
To use `cxxopts` in your project, add the following configurations to the respective files after you have gained access to a `build2` package repository that contains it.

### `manifest`
To make `cxxopts` available for import, add the following dependency to the `manifest` of each package in your project that requires it, adjusting the version constraint as appropriate.

    depends: libcxxopts ^3.3.1

### `buildfile`
To import the contained library, use the following declaration in your `buildfile`.

    import cxxopts = libcxxopts%lib{cxxopts}

### C++ Header Inclusion
Finally, include the `cxxopts` header in your C++ source code.

```c++
#include <cxxopts.hpp>
```
