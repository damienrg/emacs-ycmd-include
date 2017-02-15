# Repository to test emacs-ycmd completion on include #

## Usage ##
Initialize submodules:

`git submodule update --init --recursive`

Build ycmd:

`./3rdparty/ycmd/build.py --clang-completer`

Install Cask:

`curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python`

Install emacs packages:

`cask install`

Create compile_commands.json:

`mkdir build && (cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..)`

Run emacs:

`YCMD_COMPILE_JSON="$PWD/build/" cask emacs -Q -l init.el src/main.cpp`
