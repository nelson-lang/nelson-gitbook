#import "nelson_help.typ": *

= engPutVariable <mex:engPutVariable>

Put variable into Nelson engine workspace

== Syntax

- #raw("#include \"engine.h\"");
- #raw("int engPutVariable(Engine *ep, const char *name, const mxArray *pm);");

== Input argument

/ Engine \*ep: handle to Nelson engine.
/ const char \*name: name of mxArray in the Nelson workspace (base scope).
/ const mxArray \*pm: Pointer to mxArray.

== Output argument

/ int: 0 if successful or 1 if an error occurs.

== Description

Put variable into Nelson engine workspace.


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== See also

#nlink(<mex:mex>)[mex];, #nlink(<mex:engGetVariable>)[engGetVariable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
