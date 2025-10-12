# jlenv

Change default environment of Julia interpreter.

## Syntax

- jlenv
- je = jlenv('Version', julia_path)
- je = jlenv(...)

## Input argument

- julia_path - a string, or row characters array: executable file name of Julia.

## Output argument

- je - JuliaEnvironment object.

## Description

<p>Use jlenv to modify the default version or execution mode of the Julia interpreter, ensuring these adjustments persist across various Nelson sessions.</p>

<p>The value set by jlenv is persistent across Nelson sessions.</p>

<p></p>

<p>Properties:</p>

<p>
            Version: string: Julia version</p>

<p>
                Executable: string: Name of Julia executable file</p>

<p>
                    Library: string: Shared library file</p>

<p>
                        Home: string: Home folder</p>

<p>
                            Status: Process status: "NotLoaded" (default), "Loaded", "Terminated"</p>

<p>
                                ExecutionMode: Execution mode: "InProcess" (default) or "OutOfProcess"</p>

<p></p>

<p>Use environment variables to force julia environment at each startup (usefull for snapcraft or docker distribution):</p>

<p></p>

<p>
                                    __NELSON_JULIA_VERSION__:  example "1.11"</p>

<p>
                                        __NELSON_JULIA_EXECUTABLE__: example  "/usr/bin/julia"</p>

<p>
                                            __NELSON_JULIA_LIBRARY__: example "libjulia.so"</p>

<p>
                                                __NELSON_JULIA_HOME__: example "/usr"</p>

<p>All environment variables must exist and valid to be considered.</p>

<p></p>

## Examples

```matlab
je = jlenv
```

Set the Julia executable path

```matlab
jlenv('Version', ''C:\WindowsTools\Julia-1.11.6\bin\julia.exe'')
```

## See also

[jlrun](../julia_engine/jlrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.12.0  | initial version |

## Author

Allan CORNET
