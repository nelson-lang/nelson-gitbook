#import "nelson_help.typ": *

= isquietmode <engine:isquietmode>

Return true if Nelson started with --quiet option.

== Syntax

- #raw("res = isquietmode()");

== Output argument

/ res: a logical true or false

== Description

#strong[isquietmode]; returns a logical 1 if Nelson started with --quiet option and a logical 0 otherwise.


== Example

``````matlab
disp(isquietmode());
``````


== See also

#nlink(<engine:executable>)[executable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
