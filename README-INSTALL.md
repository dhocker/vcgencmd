# How to Install to a Virtual Environment
## Build
This step builds a .whl file in the dist/ folder. The version used for the 
.whl file comes from the setup.py file.

```
./build.sh
```

## Install
This step installs a selected .whl package in the current environment (which
should be a virtual environment).

```
./install.sh
```

The script will present a list of all the .whl files in the dist/ folder.
The chosen .whl will be installed.
