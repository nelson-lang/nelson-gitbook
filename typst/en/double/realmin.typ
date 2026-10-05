#import "nelson_help.typ": *

= realmin <double:realmin>

Smallest positive floating-point number.

== Syntax

- #raw("R = realmin()");
- #raw("R = realmin('double')");
- #raw("R = realmin('single')");

== Output argument

/ R: a double or single.

== Description

#strong[realmin]; returns smallest positive floating-point number.


== Example

``````matlab
realmin
realmin('double')
realmin('single')
``````


== See also

#nlink(<double:realmax>)[realmax];, #nlink(<integer:intmin>)[intmin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
