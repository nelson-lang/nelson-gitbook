# pyenv

Change default environment of Python interpreter.

## Syntax

- pyenv
- pe = pyenv('Version', python_path)
- pe = pyenv(...)

## Input argument

- python_path - a string, or row characters array: executable file name of Python.

## Output argument

- pe - PythonEnvironment object.

## Description

  <p>Use <b>pyenv</b> to modify the default version or execution mode of the Python interpreter, ensuring these adjustments persist across various Nelson sessions.</p>
  <p>The value set by <b>pyenv</b> is persistent across MATLAB sessions.</p>
  <p/>
  <p>Properties:</p>
  <p><b>Version</b>: string: Python version</p>
  <p><b>Executable</b>: string: Name of Python executable file</p>
  <p><b>Library</b>: string: Shared library file</p>
  <p><b>Home</b>: string: Home folder</p>
  <p><b>Status</b>: Process status: (0: default), 1: Loaded, 2: Terminated</p>
  <p><b>ExecutionMode</b>: Execution mode: InProcess (0: default) or OutOfProcess (1)</p>

## Example

```matlab
pe = pyenv
```

## See also

[pyrun](pyrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

## Author

Allan CORNET
