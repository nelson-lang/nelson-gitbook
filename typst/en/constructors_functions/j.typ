#import "nelson_help.typ": *

= j <constructors_functions:j>

Imaginary unit.

== Syntax

- #raw("j");
- #raw("3*j");

== Output argument

/ j: scalar complex value equal to sqrt(-1).

== Description

j returns the imaginary unit sqrt(-1), like i.

 j can be redefined as an ordinary variable. Use clear to restore the default behavior.


== Example

Build a complex number with the imaginary unit.

``````matlab
z = 2 + 3*j
``````


== See also

#nlink(<constructors_functions:i>)[i];, #nlink(<elementary_functions:3_complex_numbers.complex>)[complex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
