#import "../nelson_help.typ": *

= head <table:3_summary_information.head>

Get top rows of table or array.

== Syntax

- #raw("head(A)");
- #raw("head(A, k)");
- #raw("B = head(...)");

== Input argument

/ A: Input array (table or other).

== Output argument

/ k: a integer value: Number of rows to extract (k \= 8 by default).

== Description

#strong[head(A)]; displays the first eight rows of an array, or table #strong[A]; in the Command Window without assigning it to a variable.

 #strong[head(A, k)]; displays the first k rows of A.

 #strong[B \= head(...)]; returns the specified rows of #strong[A]; for any of the previous syntaxes, with#strong[B]; having the same data type as #strong[A];.


== Examples

``````matlab
LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(LastName, Age, Smoker, Height, Weight, BloodPressure)
head(T, 2)
``````

``````matlab
A = repmat((1:50)',1, 3);
head(A)
``````


== See also

#nlink(<table:3_summary_information.tail>)[tail];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [initial version],
)

// Author: Allan CORNET
