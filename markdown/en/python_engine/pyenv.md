# pyenv

Change default environment of Python interpreter.

## Syntax

- pyenv
- pe = pyenv('Version', python_path)
- pe = pyenv(...)

## Input argument

- python_path - a string, or row characters array: executable file name of Python or version (on Windows).

## Output argument

- pe - PythonEnvironment object.

## Description

<p>Use pyenv to modify the default version or execution mode of the Python interpreter, ensuring these adjustments persist across various Nelson sessions.</p>

<p>The value set by pyenv is persistent across Nelson sessions.</p>

<p></p>

<p>Properties:</p>

<p>
            Version: string: Python version</p>

<p>
                Executable: string: Name of Python executable file</p>

<p>
                    Library: string: Shared library file</p>

<p>
                        Home: string: Home folder</p>

<p>
                            Status: Process status: "NotLoaded" (default), "Loaded", "Terminated"</p>

<p>
                                ExecutionMode: Execution mode: "InProcess" (default) or "OutOfProcess"</p>

<p></p>

<p>Use environment variables to force python environment at each startup (usefull for snapcraft or docker distribution):</p>

<p></p>

<p>
                                    __NELSON_PYTHON_VERSION__:  example "3.10"</p>

<p>
                                        __NELSON_PYTHON_EXECUTABLE__: example  "/usr/bin/python3"</p>

<p>
                                            __NELSON_PYTHON_LIBRARY__: example "libpython3.10.so.1.0"</p>

<p>
                                                __NELSON_PYTHON_HOME__: example "/usr"</p>

<p>All environment variables must exist and valid to be considered.</p>

<p></p>

<p>On Windows, the pyenv('Version', '3.11') function searches the Windows Registry for the Python version associated with the specified version. It first looks in the HKCU environment, and if not found, it searches in HKLM.</p>

## Examples

```matlab
pe = pyenv
```

```matlab
if ispc()
pe = pyenv('Version', '3.12')
end
```

## See also

[pyrun](../python_engine/pyrun.md).

## History

| Version | Description                                       |
| ------- | ------------------------------------------------- |
| 1.3.0   | initial version                                   |
| 1.4.0   | environment variables to force python environment |
| 1.4.0   | On Windows find python by Windows registry.       |

## Author

Allan CORNET
