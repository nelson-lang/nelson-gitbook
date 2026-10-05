#import "nelson_help.typ": *

= i <constructors_functions:i>

Pure Imaginary number.

== Syntax

- #raw("i");
- #raw("0i");
- #raw("3*i");

== Description

#strong[i];, or #strong[j]; returns a pure imaginary number equivalent to sqrt(-1).

 Beware, i and j can be redefined and used as ordinary variables, in this case, you must use clear to restore default behavior.


== Examples

``````matlab
A = 3i
``````

``````matlab
A = single(3i)
``````

``````matlab
i = 33;
disp(i);
clear('i');
disp(i);
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.complex>)[complex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
