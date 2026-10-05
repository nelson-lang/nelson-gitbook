#import "nelson_help.typ": *

= mtimes <operators:mtimes>

Matrix multiplication, \* operator

== Syntax

- #raw("C = mtimes(A, B)");
- #raw("C = A * B");

== Input argument

/ A: a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.
/ B: a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.

== Output argument

/ C: result of A \* B

== Description

#strong[C \= mtimes(A, B)]; performs matrix multiplication operation: A \* B.

 When one operand is a table or timetable and the other operand is a scalar, #strong[A \* B]; is an element-wise operation applied to every variable, identical to #strong[A .\* B];: variable names, units and row times are kept. Any other combination with a table or timetable (two tables, or a table and a non-scalar array) is an error: use #strong[.\*]; instead.


== Examples

``````matlab
mtimes(3, 4)
3 * 4
``````

``````matlab
M1 = [2 6 10; 4 8 70];
M2 = [-25 88 1; 23 29 41; 24 40 0];
M1 * M2
``````

Element-wise operation between a table and a scalar.

``````matlab
T = table([1; 2], [3; 4]);
T * 2
0.5 * T
``````


== See also

#nlink(<operators:times>)[times];, #nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [table and timetable operands combined with a scalar (element-wise operation).],
)

// Author: Allan CORNET
