#import "nelson_help.typ": *

= single <single:single>

Converts a variable to single precision type.

== Syntax

- #raw("S = single(V)");

== Input argument

/ V: a variable.

== Output argument

/ S: a single.

== Description

#strong[single(V)]; converts to the single-precision type.


== Examples

``````matlab
single('Nelson')
``````

``````matlab
A = single(pi)
``````


== See also

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<double:double>)[double];, #nlink(<interpreter:numeric_types>)[numeric types];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
