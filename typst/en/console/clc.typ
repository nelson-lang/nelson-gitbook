#import "nelson_help.typ": *

= clc <console:clc>

Clear Command Window.

== Syntax

- #raw("clc()");

== Description

#strong[clc()]; clears the console and move the cursor to the upper left corner.


== Example

``````matlab
disp('Hello');
clc()

``````


== See also

#nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
