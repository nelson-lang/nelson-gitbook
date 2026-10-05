#import "nelson_help.typ": *

= disp <display_format:disp>

Display a variable.

== Syntax

- #raw("disp(V)");

== Input argument

/ V: a variable

== Description

#strong[disp(V)]; displays the value of the variable #strong[V];.

 #strong[disp]; uses current#strong[format]; setting to display numeric values.


== Examples

``````matlab
disp('Hello Nelson')
``````

``````matlab
disp(pi)
``````

``````matlab
disp(eye(3, 3))
``````

disp always ends with a newline.

``````matlab
disp('')
``````


== See also

#nlink(<display_format:display>)[display];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<display_format:format>)[format];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
