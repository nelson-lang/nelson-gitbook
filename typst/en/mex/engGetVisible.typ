#import "nelson_help.typ": *

= engGetVisible <mex:engGetVisible>

Determine visibility of Nelson engine session

== Syntax

- #raw("#include \"engine.h\"");
- #raw("int engGetVisible(Engine *ep, bool *value);");

== Input argument

/ Engine \*ep: handle to Nelson engine.

== Output argument

/ int: 0 if successful or 1 if an error occurs.
/ bool \*: true (visible) or false (minimize).

== Description

Determine visibility of Nelson engine session


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== See also

#nlink(<mex:mex>)[mex];, #nlink(<mex:engSetVisible>)[engSetVisible];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
