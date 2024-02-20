# build2 Package for cxxopts

This project builds and defines the build2 package for [`cxxopts`](https://github.com/jarro2783/cxxopts), a lightweight C++ command line option parser.
The packaging code is licensed under the MIT License, the upstream artifacts are licensed under the terms and conditions of cxxopts.

[![Official](https://img.shields.io/website/https/github.com/jarro2783/cxxopts.svg?down_message=offline&label=Official&style=for-the-badge&up_color=blue&up_message=online)](https://github.com/jarro2783/cxxopts)
[![build2](https://img.shields.io/website/https/github.com/build2-packaging/cxxopts.svg?down_message=offline&label=build2&style=for-the-badge&up_color=blue&up_message=online)](https://github.com/build2-packaging/cxxopts)
[![cppget.org](https://img.shields.io/website/https/cppget.org/libcxxopts.svg?down_message=offline&label=cppget.org&style=for-the-badge&up_color=blue&up_message=online)](https://cppget.org/libcxxopts)
[![queue.cppget.org](https://img.shields.io/website/https/queue.cppget.org/libcxxopts.svg?down_message=empty&down_color=blue&label=queue.cppget.org&style=for-the-badge&up_color=orange&up_message=running)](https://queue.cppget.org/libcxxopts)

[![build2](https://github.com/build2-packaging/cxxopts/actions/workflows/build2.yml/badge.svg)](https://github.com/build2-packaging/cxxopts/actions/workflows/build2.yml)

## Usage

Make sure to add the stable section of the [cppget.org](https://cppget.org/?about) repository to your project's `repositories.manifest` to be able to fetch this package.

    :
    role: prerequisite
    location: https://pkg.cppget.org/1/stable
    # trust: ...

If this is not an option then, instead, add this Git repository itself as a prerequisite.

    :
    role: prerequisite
    location: https://github.com/build2-packaging/cxxopts.git

Add the respective dependency in your project's `manifest` file to make the package available for import.

```
depends: libcxxopts ^ 3.2.0
```

Import the library in your `buildfile` by using the following line.

```
import cxxopts = libcxxopts%lib{cxxopts}
```

## Configuration
### Unicode Support

    config [bool] config.libcxxopts.use_unicode ?= false

Unicode functionality in cxxopts is based on the ICU library.
It will be added as interface dependency to the header-only library if this config variable is set to `true`.

## Issues
- The upstream code uses older versions of Catch2 and provides its source code in-place. We don't depend on the Catch2 package as this older version is not available on `cppget.org`.

## Contributing
Thanks in advance for your help and contribution to keep this package up-to-date.
For now, please, file an issue on [GitHub](https://github.com/build2-packaging/cxxopts/issues) for everything that is not described below.

### Recommend Updating Version
Please, file an issue on [GitHub](https://github.com/build2-packaging/cxxopts/issues) with the new recommended version.

### Update Version by Pull Request
1. Fork the repository on [GitHub](https://github.com/build2-packaging/cxxopts) and clone it to your local machine.
2. Run `git submodule init` and `git submodule update` to get the current upstream directory.
3. Inside the `upstream` directory, checkout the new library version `X.Y.Z` by calling `git checkout vX.Y.Z` that you want to be packaged.
4. If needed, change source files, `buildfiles`, and symbolic links accordingly to create a working build2 package. Make sure not to directly depend on the upstream directory inside the build system but use symbolic links instead.
5. Update library version in `manifest` file if it has changed or add package update by using `+n` for the `n`-th update.
6. Make an appropriate commit message by using imperative mood and a capital letter at the start and push the new commit to the `master` branch.
7. Run `bdep ci` and test for errors.
8. If everything works fine, make a pull request on GitHub and write down the `bdep ci` link to your CI tests.
9. After a successful pull request, we will run the appropriate commands to publish a new package version.

### Update Version Directly if You Have Permissions
1. Inside the `upstream` directory, checkout the new library version `X.Y.Z` by calling `git checkout vX.Y.Z` that you want to be packaged.
2. If needed, change source files, `buildfiles`, and symbolic links accordingly to create a working build2 package. Make sure not to directly depend on the upstream directory inside the build system but use symbolic links instead.
3. Update library version in `manifest` file if it has changed or add package update by using `+n` for the `n`-th update.
4. Make an appropriate commit message by using imperative mood and a capital letter at the start and push the new commit to the `master` branch.
5. Run `bdep ci` and test for errors and warnings.
6. When successful, run `bdep release --tag --push` to push new tag version to repository.
7. Run `bdep publish` to publish the package to [cppget.org](https://cppget.org).
