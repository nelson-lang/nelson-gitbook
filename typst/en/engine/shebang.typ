#import "nelson_help.typ": *

= \#! shebang <engine:shebang>

On Unix, Linux operating systems, Parses the rest of the script's initial line as an interpreter directive.

== Description

On Unix, Linux and MacOs X, shebang allows to execute directly a NelSon script.


== Example

``````matlab
#!nelson-adv-cli -q -f
argv()
disp('shebang example line 1')
disp('shebang example line 2')
exit()

``````


== See also

#nlink(<engine:executable>)[executable];, #nlink(<engine:argv>)[argv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
