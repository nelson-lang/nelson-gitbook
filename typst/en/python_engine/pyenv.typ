#import "nelson_help.typ": *

= pyenv <python_engine:pyenv>

Change default environment of Python interpreter.

== Syntax

- #raw("pyenv");
- #raw("pe = pyenv('Version', python_path)");
- #raw("pe = pyenv(...)");

== Input argument

/ python\_path: a string, or row characters array: executable file name of Python or version (on Windows).

== Output argument

/ pe: PythonEnvironment object.

== Description

Use #strong[pyenv]; to modify the default version or execution mode of the Python interpreter, ensuring these adjustments persist across various Nelson sessions.

 The value set by#strong[pyenv]; is persistent across Nelson sessions.

 

 Properties:

 #strong[Version];: string: Python version

 #strong[Executable];: string: Name of Python executable file

 #strong[Library];: string: Shared library file

 #strong[Home];: string: Home folder

 #strong[Status];: Process status: "NotLoaded" (default), "Loaded", "Terminated"

 #strong[ExecutionMode];: Execution mode: "InProcess" (default) or "OutOfProcess"

 

 Use environment variables to force python environment at each startup (useful for snapcraft or docker distribution):

 

 #strong[\_\_NELSON\_PYTHON\_VERSION\_\_];: example "3.10"

 #strong[\_\_NELSON\_PYTHON\_EXECUTABLE\_\_];: example "\/usr\/bin\/python3"

 #strong[\_\_NELSON\_PYTHON\_LIBRARY\_\_];: example "libpython3.10.so.1.0"

 #strong[\_\_NELSON\_PYTHON\_HOME\_\_];: example "\/usr"

 All environment variables must exist and valid to be considered.

 

 On Windows, the #strong[pyenv('Version', '3.11')]; function searches the Windows Registry for the Python version associated with the specified version. It first looks in the HKCU environment, and if not found, it searches in HKLM.


== Examples

``````matlab
pe = pyenv
``````

``````matlab
if ispc()
pe = pyenv('Version', '3.12')
end
``````


== See also

#nlink(<python_engine:pyrun>)[pyrun];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
  [1.4.0], [environment variables to force python environment],
  [1.4.0], [On Windows find python by Windows registry.],
)

// Author: Allan CORNET
