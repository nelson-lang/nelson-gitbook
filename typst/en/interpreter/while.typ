#import "nelson_help.typ": *

= while <interpreter:while>

while loop.

== Syntax

- #raw("while test_expression, statements, end");

== Description

#strong[while]; loop executes a set of statements as long as a the test condition remains#strong[true];.


== Example

``````matlab

i = 0;
while lt(i, 10)
  disp(i)
  i = i + 1;
end

``````


== See also

#nlink(<interpreter:for>)[for];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
