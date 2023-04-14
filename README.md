# cxxopts Build2 Package

[![build2](https://github.com/build2-packaging/cxxopts/actions/workflows/build2.yml/badge.svg)](https://github.com/build2-packaging/cxxopts/actions/workflows/build2.yml)

This project builds and defines the build2 package for the [cxxopts](https://github.com/jarro2783/cxxopts) library.

The packaging code is licensed under the MIT License, the upstream artifacts are licensed under the terms and conditions of cxxopts.

## Usage

You can simply add these packages as dependency to your project by specifying them in your `manifest`:

```
depends: libcxxopts ^3.1.1
```

Then import your required targets

```
import libs = libcxxopts%lib{cxxopts}
```
