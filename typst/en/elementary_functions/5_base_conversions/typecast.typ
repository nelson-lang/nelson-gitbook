#import "../nelson_help.typ": *

= typecast <elementary_functions:5_base_conversions.typecast>

Convert data type without changing underlying data.

== Syntax

- #raw("Y = typecast(X, type)");

== Input argument

/ X: a variable: noncomplex, full, numeric scalar or vector.
/ type: a character vector: destination numeric class name ('int8', 'int16', 'int32', 'int64', 'uint8', 'uint16', 'uint32', 'uint64', 'single' or 'double').

== Output argument

/ Y: result of typecast: X reinterpreted as the requested type.

== Description

#strong[typecast]; reinterprets the bytes of #strong[X]; as the numeric class #strong[type]; without changing the underlying byte pattern.

 Unlike #strong[cast];, the numeric values are not converted: only the class interpretation of the same memory changes. The number of bytes of the input must be a whole multiple of the destination class size.

 A column vector yields a column vector, otherwise the result is a row vector.


== Example

``````matlab
Y = typecast(single(1), 'uint32')
Z = typecast(uint32(1065353216), 'single')
``````


== See also

#nlink(<elementary_functions:5_base_conversions.cast>)[cast];, #nlink(<elementary_functions:5_base_conversions.swapbytes>)[swapbytes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
