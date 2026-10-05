#import "../nelson_help.typ": *

= deal <elementary_functions:1_array_creation_shape.deal>

Distribute inputs to outputs.

== Syntax

- #raw("[R1, ... , Rn] = deal(A1, ... , An)");
- #raw("[R1, ... , Rn] = deal(A)");

== Input argument

/ A1, ... , An: variables

== Output argument

/ R1, ... , Rn: variables

== Description

#strong[deal]; replicates the input parameters to the corresponding output parameters.

 If a singular input parameter is provided, its value will be duplicated across all outputs.


== Examples

``````matlab
[A1, A2, A3] = deal(pi)
``````

``````matlab
S = [];
S.A = [];
S(2).A = [];
S(3).A = [];
A1 = 200;
A2 = 'fifo';
A3 = 1:11;
[S.A] = deal(A1, A2, A3) 
``````

``````matlab
C = cell(1,3)
A1 = 200;
A2 = 'fifo';
A3 = 1:11;
[C{:}] = deal(A1, A2, A3)
``````


== See also

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
