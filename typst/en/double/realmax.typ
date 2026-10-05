#import "nelson_help.typ": *

= realmax <double:realmax>

Largest positive floating-point number.

== Syntax

- #raw("R = realmax()");
- #raw("R = realmax('double')");
- #raw("R = realmax('single')");

== Output argument

/ R: a double or single.

== Description

#strong[realmax]; returns largest positive floating-point number.


== Example

``````matlab
realmax
realmax('double')
realmax('single')
``````


== See also

#nlink(<integer:intmax>)[intmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
