#import "nelson_help.typ": *

= rehash <functions_manager:rehash>

Reinitialize Nelson’s search path directory cache.

== Syntax

- #raw("rehash");

== Description

#strong[rehash()]; reinitializes Nelson’s search path directory cache.

 This happens each time Nelson displays the prompt.

 You should use #strong[rehash()]; only when you run a .m file that updates another .m file


== Example

``````matlab
rehash()
``````


== See also

#nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:path>)[path];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
