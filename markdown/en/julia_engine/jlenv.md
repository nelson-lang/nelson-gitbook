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

  <p>Use <b>jlenv</b> to modify the default version or execution mode of the Julia interpreter, ensuring these adjustments persist across various Nelson sessions.</p>
  <p>The value set by <b>jlenv</b> is persistent across Nelson sessions.</p>
  <p/>
  <p>Properties:</p>
  <p><b>Version</b>: string: Julia version</p>
  <p><b>Executable</b>: string: Name of Julia executable file</p>
  <p><b>Library</b>: string: Shared library file</p>
  <p><b>Home</b>: string: Home folder</p>
  <p><b>Status</b>: Process status: "NotLoaded" (default), "Loaded", "Terminated"</p>
  <p><b>ExecutionMode</b>: Execution mode: "InProcess" (default) or "OutOfProcess"</p>
  <p/>
  <p>Use environment variables to force julia environment at each startup (usefull for snapcraft or docker distribution):</p>
  <p/>
  <p><b>__NELSON_JULIA_VERSION__</b>:  example "1.11"</p>
  <p><b>__NELSON_JULIA_EXECUTABLE__</b>: example  "/usr/bin/julia"</p>
  <p><b>__NELSON_JULIA_LIBRARY__</b>: example "libjulia.so"</p>
  <p><b>__NELSON_JULIA_HOME__</b>: example "/usr"</p>
  <p>All environment variables must exist and valid to be considered.</p>
  <p/>

## Example

```matlab
je = jlenv
```

## See also

[jlrun](jlrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.12.0  | initial version |

## Author

Allan CORNET
