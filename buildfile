import pkgs = libcxxopts/
import tests = libcxxopts-tests/
./: $pkgs
./: $tests: install = false
