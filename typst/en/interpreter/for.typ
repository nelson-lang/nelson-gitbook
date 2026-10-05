#import "nelson_help.typ": *

= for <interpreter:for>

for loop.

== Syntax

- #raw("for variable = expression, statements, end");
- #raw("for variable, statements, end");

== Description

#strong[for]; loop executes a set of statements with an index variable looping through each element in a vector.

 #strong[parfor]; is currently an alias on #strong[for]; keyword.


== Examples

``````matlab
for i = 1:10, disp(i), end
``````

``````matlab
for i = [1, 2; 3 4], disp(i), disp('next'), end
``````


== See also

#nlink(<interpreter:while>)[while];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
