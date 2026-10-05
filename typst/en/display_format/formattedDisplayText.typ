#import "nelson_help.typ": *

= formattedDisplayText <display_format:formattedDisplayText>

Capture display output as string.

== Syntax

- #raw("str = formattedDisplayText(V)");
- #raw("str = formattedDisplayText(V, Name, Value)");

== Input argument

/ V: Variable to return as string
/ Name, Value: Name-Value Pair Arguments, Name: 'NumericFormat' or 'LineSpacing'.

== Output argument

/ str: a string

== Description

#strong[str \= formattedDisplayText(V)]; returns the display output of #strong[V]; as a string.

 The string contains equivalent to #strong[disp(V)];.


== Example

``````matlab
R = eye(3, 3)
str = formattedDisplayText(R)
R = rand(3, 3);
disp(R)
str = formattedDisplayText(R)
str = formattedDisplayText(R, 'NumericFormat', 'bank', 'LineSpacing', 'compact')
``````


== See also

#nlink(<display_format:display>)[display];, #nlink(<display_format:disp>)[disp];, #nlink(<display_format:format>)[format];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
