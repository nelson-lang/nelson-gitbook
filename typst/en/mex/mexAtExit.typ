#import "nelson_help.typ": *

= mexAtExit <mex:mexAtExit>

Register a function to be called when the MEX-file is cleared or when Nelson exits

== Syntax

- #raw("#include \"mex.h\"");
- #raw("int mexAtExit(void (*ExitFcn)(void));");

== Input argument

/ ExitFcn: Pointer to function you wish to run on exit.

== Output argument

/ returned value: returns 0.

== Description

Each MEX can register only one active exit subroutine at a time.

 #strong[mexAtExit]; registers a subroutine to be called just when Nelson is finished or#strong[clear]; is called.


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_mexAtExit.m'])
``````


== See also

#nlink(<core:exit>)[exit];, #nlink(<memory_manager:clear>)[clear];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
