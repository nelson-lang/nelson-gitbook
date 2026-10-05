#import "nelson_help.typ": *

= jlenv <julia_engine:jlenv>

Change default environment of Julia interpreter.

== Syntax

- #raw("jlenv");
- #raw("je = jlenv('Version', julia_path)");
- #raw("je = jlenv(...)");

== Input argument

/ julia\_path: a string, or row characters array: executable file name of Julia.

== Output argument

/ je: JuliaEnvironment object.

== Description

Use #strong[jlenv]; to modify the default version or execution mode of the Julia interpreter, ensuring these adjustments persist across various Nelson sessions.

 The value set by#strong[jlenv]; is persistent across Nelson sessions.

 

 Properties:

 #strong[Version];: string: Julia version

 #strong[Executable];: string: Name of Julia executable file

 #strong[Library];: string: Shared library file

 #strong[Home];: string: Home folder

 #strong[Status];: Process status: "NotLoaded" (default), "Loaded", "Terminated"

 #strong[ExecutionMode];: Execution mode: "InProcess" (default) or "OutOfProcess"

 

 Use environment variables to force julia environment at each startup (useful for snapcraft or docker distribution):

 

 #strong[\_\_NELSON\_JULIA\_VERSION\_\_];: example "1.11"

 #strong[\_\_NELSON\_JULIA\_EXECUTABLE\_\_];: example "\/usr\/bin\/julia"

 #strong[\_\_NELSON\_JULIA\_LIBRARY\_\_];: example "libjulia.so"

 #strong[\_\_NELSON\_JULIA\_HOME\_\_];: example "\/usr"

 All environment variables must exist and valid to be considered.

 


== Examples

``````matlab
je = jlenv
``````

Set the Julia executable path

``````matlab
jlenv('Version', ''C:\WindowsTools\Julia-1.11.6\bin\julia.exe'')
``````


== See also

#nlink(<julia_engine:jlrun>)[jlrun];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.12.0], [initial version],
)

// Author: Allan CORNET
