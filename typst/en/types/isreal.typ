#import "nelson_help.typ": *

= isreal <types:isreal>

Return true if all imaginary part is a zero array.

== Syntax

- #raw("res = isreal(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isreal]; returns a logical true if var is a non-complex matrix or scalar and a logical false otherwise. An array stored as complex is not real, even when it is empty or its imaginary parts are zero: #strong[isreal(complex(\[\]))]; and #strong[isreal(complex(1))]; return false. Arithmetic, indexing and deletion giving an empty result return a real array.
== Examples

``````matlab
A = 1 + 0i;
res = isreal(A)
``````

``````matlab
B = uint8(3);
res = isreal(B)
``````

``````matlab
A = single([3, i]);
res = isreal(A)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<types:isint8>)[isint8];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
