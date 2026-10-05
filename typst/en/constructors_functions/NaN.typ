#import "nelson_help.typ": *

= NaN <constructors_functions:NaN>

Creates an Not-a-Number

== Syntax

- #raw("NaN");
- #raw("nan");
- #raw("NaN(n)");
- #raw("NaN(n, m)");
- #raw("NaN(n, classname)");
- #raw("NaN(n, m, classname)");
- #raw("NaN(classname)");

== Input argument

/ n: a scalar integer: number of rows (and columns if m is omitted).
/ m: a scalar integer: number of columns.
/ classname: a string: 'double' (default) or 'single'.

== Description

#strong[NaN]; returns the IEEE symbol NaN (Not a Number).

 #strong[NaN(n)]; returns an n-by-n matrix filled with #strong[NaN];; #strong[NaN(n, m)]; returns an n-by-m matrix. The optional #strong[classname]; argument must be #strong['double']; (default) or #strong['single'];.

 #strong[NaN]; is the result of operations which do not produce a well defined numerical result.

 Beware, you must never compare #strong[NaN]; with #strong[NaN];, in this case, please use #strong[isnan];.


== Examples

``````matlab
NaN
``````

``````matlab
3 + NaN
``````

``````matlab
NaN != NaN
isnan(NaN)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
