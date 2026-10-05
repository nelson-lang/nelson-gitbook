#import "nelson_help.typ": *

= true <logical:true>

Logical true.

== Syntax

- #raw("true");
- #raw("l = true(n)");
- #raw("l = true(sz)");
- #raw("l = true(size(A))");
- #raw("l = true(n, m, ..., k)");
- #raw("l = true(n, m, 'like', sp)");

== Input argument

/ n: a integer value.
/ sz: a row vector of dimensions, such as the result of #strong[size];.
/ A: an array whose size is used to create the output.
/ n, m, ..., k: a n -by- m - ... -by- k array to indicate size.
/ sp: a sparse or array.

== Output argument

/ l: a logical value: true.

== Description

#strong[true]; builds an array of logical true values.


== Example

``````matlab
true
true(4)
true(4, 1, 4)
A = zeros(2, 3);
T = true(size(A))
L = logical(sparse(1, 2))
L2 = true(3,'like', L);
``````


== See also

#nlink(<logical:false>)[false];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
