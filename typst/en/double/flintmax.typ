#import "nelson_help.typ": *

= flintmax <double:flintmax>

Largest consecutive integer in floating-point format.

== Syntax

- #raw("R = flintmax()");
- #raw("R = flintmax('double')");
- #raw("R = flintmax('single')");
- #raw("R = flintmax('like', V)");

== Input argument

/ V: a double or single variable.

== Output argument

/ R: a double or single.

== Description

#strong[flintmax]; returns largest consecutive integer in floating-point format.


== Example

``````matlab
flintmax
flintmax('double')
flintmax('like', pi)
flintmax('single')
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
