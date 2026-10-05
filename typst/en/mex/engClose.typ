#import "nelson_help.typ": *

= engClose <mex:engClose>

Close Nelson engine session

== Syntax

- #raw("#include \"engine.h\"");
- #raw("int engClose(Engine *ep);");

== Input argument

/ Engine \*ep: handle to Nelson engine.

== Output argument

/ int: 0 on success and 1 on failure.

== Description

engClose closes engine session and terminates the connection.


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== See also

#nlink(<mex:mex>)[mex];, #nlink(<mex:engOpen>)[engOpen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
