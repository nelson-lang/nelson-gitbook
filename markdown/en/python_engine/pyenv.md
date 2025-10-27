# pyenv

Change default environment of Python interpreter.

## 📝 Syntax

- pyenv
- pe = pyenv('Version', python_path)
- pe = pyenv(...)

## 📥 Input argument

- python_path - a string, or row characters array: executable file name of Python or version (on Windows).

## 📤 Output argument

- pe - PythonEnvironment object.

## 📄 Description

Use <b>pyenv</b> to modify the default version or execution mode of the Python interpreter, ensuring these adjustments persist across various Nelson sessions.

The value set by <b>pyenv</b> is persistent across Nelson sessions.

Properties:

<b>Version</b>: string: Python version

<b>Executable</b>: string: Name of Python executable file

<b>Library</b>: string: Shared library file

<b>Home</b>: string: Home folder

<b>Status</b>: Process status: "NotLoaded" (default), "Loaded", "Terminated"

<b>ExecutionMode</b>: Execution mode: "InProcess" (default) or "OutOfProcess"

Use environment variables to force python environment at each startup (usefull for snapcraft or docker distribution):

<b>**NELSON_PYTHON_VERSION**</b>: example "3.10"

<b>**NELSON_PYTHON_EXECUTABLE**</b>: example "/usr/bin/python3"

<b>**NELSON_PYTHON_LIBRARY**</b>: example "libpython3.10.so.1.0"

<b>**NELSON_PYTHON_HOME**</b>: example "/usr"

All environment variables must exist and valid to be considered.

On Windows, the <b>pyenv('Version', '3.11')</b> function searches the Windows Registry for the Python version associated with the specified version. It first looks in the HKCU environment, and if not found, it searches in HKLM.

## 💡 Examples

```matlab
pe = pyenv
```

```matlab
if ispc()
pe = pyenv('Version', '3.12')
end
```

## 🔗 See also

[pyrun](../python_engine/pyrun.md).

## 🕔 History

| Version | 📄 Description                                    |
| ------- | ------------------------------------------------- |
| 1.3.0   | initial version                                   |
| 1.4.0   | environment variables to force python environment |
| 1.4.0   | On Windows find python by Windows registry.       |

## 👤 Author

Allan CORNET
