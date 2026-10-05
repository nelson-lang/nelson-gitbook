#import "nelson_help.typ": *

= mrdivide <operators:mrdivide>

Matrix right division, \/ operator.

== Syntax

- #raw("C = mrdivide(A, B)");
- #raw("C = A / B");

== Input argument

/ A: a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.
/ B: a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.

== Output argument

/ C: result of A \/ B

== Description

#strong[C \= mrdivide(A, B)]; returns the matrix right division of A and B.

 When one operand is a table or timetable and the other operand is a scalar, #strong[A \/ B]; is an element-wise operation applied to every variable, identical to #strong[A .\/ B];: variable names, units and row times are kept. Any other combination with a table or timetable (two tables, or a table and a non-scalar array) is an error: use #strong[.\/]; instead.


== Examples

``````matlab
B = ones(3, 4)
A = B *2
A / B
``````

Element-wise operation between a table and a scalar.

``````matlab
T = table([1; 2], [4; 8]);
T / 2
8 / T
``````


== See also

#nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:rdivide>)[rdivide];, #nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [table and timetable operands combined with a scalar (element-wise operation).],
)

// Author: Allan CORNET
