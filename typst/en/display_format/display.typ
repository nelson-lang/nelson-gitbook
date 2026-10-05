#import "nelson_help.typ": *

= display <display_format:display>

Show information about variable or result of expression.

== Syntax

- #raw("display(V)");
- #raw("display(V, name)");

== Input argument

/ V: Result of executing a statement or expression
/ name: a character vector: variable name displayed.

== Description

#strong[display(V)]; displays information about the variable #strong[V];.

 Nelson calls#strong[display]; function whenever an object is referred to in a statement that is not terminated by a semicolon.


== Examples

``````matlab
display(33, 'Hello')
``````

``````matlab
display('Hello Nelson')
``````

``````matlab
display(pi)
``````

``````matlab
A = eye(3, 3); disp(A)
``````


== See also

#nlink(<display_format:disp>)[disp];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<display_format:format>)[format];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
