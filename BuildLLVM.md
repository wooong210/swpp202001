## How to Build LLVM

Recommended setting:
- RAM: 8 GB or more
- HDD: More than 10GB free space
- OS:
  - Windows (please install WSL: https://docs.microsoft.com/en-us/windows/wsl/wsl2-install)
  - Linux
  - Mac OS

#### Prerequisites

- `python3`: required for running scripts
- `git`: required for cloning repos
- `cmake3`, `ninja`, `g++`: required for building repos

```
# Ubuntu:
apt update
apt install git cmake ninja-build g++
```

We'll use https://github.com/aqjune/llvmscript. Please clone the repo first.

```
git clone git@github.com:aqjune/llvmscript.git
# If it raises permission denied error, try 'git clone https://github.com/aqjune/llvmscript.git' instead
cd llvmscript
```

Clone LLVM:
```
# Please edit "src" attribute at examples/llvm.json to specify where to clone LLVM project
python3 run.py clone --cfg examples/llvm.json
```

Build LLVM:
```
python3 run.py build --cfg examples/llvm.json --type release --core <# of cores to use>
# --type:
#   release: fast build, has no debug info
#   debug: slow build, large binaries; can debug llvm with gdb/lldb
#   relassert: fast build, enables assertion checks
# NOTE: if it aborts due to insufficient memory space, please re-try with
#       smaller number of cores (it will restart compiling from the last status)
```
