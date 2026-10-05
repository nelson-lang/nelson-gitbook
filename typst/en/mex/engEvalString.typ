#import "nelson_help.typ": *

= engEvalString <mex:engEvalString>

Evaluate expression in string in base scope

== Syntax

- #raw("#include \"engine.h\"");
- #raw("int engEvalString(Engine *ep, const char *string);");

== Input argument

/ Engine \*ep: handle to Nelson engine.
/ const char \*string: Expression to evaluate.

== Output argument

/ int: returns 1 if the engine session is closed or invalid. Otherwise, returns 0.

== Description

Evaluate expression in string in base scope.


== Example

``````matlab
edit([modulepath('mex'), '/examples/mex_engine_demo_2.c'])
``````


== See also

#nlink(<mex:mex>)[mex];, #nlink(<mex:engPutVariable>)[engPutVariable];, #nlink(<mex:engGetVariable>)[engGetVariable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
