# jlenv

Change default environment of Julia interpreter.

## 📝 Syntax

- jlenv
- je = jlenv('Version', julia_path)
- je = jlenv(...)

## 📥 Input argument

- julia_path - a string, or row characters array: executable file name of Julia.

## 📤 Output argument

- je - JuliaEnvironment object.

## 📄 Description

Use <b>jlenv</b> to modify the default version or execution mode of the Julia interpreter, ensuring these adjustments persist across various Nelson sessions.

The value set by <b>jlenv</b> is persistent across Nelson sessions.

Properties:

<b>Version</b>: string: Julia version

<b>Executable</b>: string: Name of Julia executable file

<b>Library</b>: string: Shared library file

<b>Home</b>: string: Home folder

<b>Status</b>: Process status: "NotLoaded" (default), "Loaded", "Terminated"

<b>ExecutionMode</b>: Execution mode: "InProcess" (default) or "OutOfProcess"

Use environment variables to force julia environment at each startup (usefull for snapcraft or docker distribution):

<b>**NELSON_JULIA_VERSION**</b>: example "1.11"

<b>**NELSON_JULIA_EXECUTABLE**</b>: example "/usr/bin/julia"

<b>**NELSON_JULIA_LIBRARY**</b>: example "libjulia.so"

<b>**NELSON_JULIA_HOME**</b>: example "/usr"

All environment variables must exist and valid to be considered.

## 💡 Examples

```matlab
je = jlenv
```

Set the Julia executable path

```matlab
jlenv('Version', ''C:\WindowsTools\Julia-1.11.6\bin\julia.exe'')
```

## 🔗 See also

[jlrun](../julia_engine/jlrun.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.12.0  | initial version |

## 👤 Author

Allan CORNET
