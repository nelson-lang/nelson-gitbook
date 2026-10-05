#import "nelson_help.typ": *

= engOutputBuffer <mex:engOutputBuffer>

Specify char buffer for Nelson output

== Syntax

- #raw("#include \"engine.h\"");
- #raw("int engOutputBuffer(Engine *ep, char *p, int n);");

== Input argument

/ Engine \*ep: handle to Nelson engine.
/ char \*p: Pointer to character buffer.
/ int n: Length of buffer.

== Output argument

/ int: returns 1 if the engine session is closed or invalid. Otherwise, returns 0.

== Description

Specify char buffer for Nelson output.

 To turn off output buffering in C, use:#strong[engOutputBuffer(ep, NULL, 0);];


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
