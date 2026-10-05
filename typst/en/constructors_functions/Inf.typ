#import "nelson_help.typ": *

= Inf <constructors_functions:Inf>

Infinity

== Syntax

- #raw("Inf");
- #raw("inf");
- #raw("Inf(n)");
- #raw("Inf(n, m)");
- #raw("Inf(n, classname)");
- #raw("Inf(n, m, classname)");
- #raw("Inf(classname)");

== Input argument

/ n: a scalar integer: number of rows (and columns if m is omitted).
/ m: a scalar integer: number of columns.
/ classname: a string: 'double' (default) or 'single'.

== Description

#strong[Inf]; returns the IEEE symbol Inf (Infinity).

 #strong[Inf(n)]; returns an n-by-n matrix filled with #strong[Inf];.

 #strong[Inf(n, m)]; returns an n-by-m matrix filled with #strong[Inf];.

 The optional #strong[classname]; argument selects the class of the result and must be either #strong['double']; (default) or #strong['single'];.


== Examples

``````matlab
Inf
``````

``````matlab
-Inf + Inf
``````

``````matlab
1.e1000
``````


== See also

#nlink(<constructors_functions:NaN>)[nan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
