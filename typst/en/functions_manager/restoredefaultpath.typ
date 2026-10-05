#import "nelson_help.typ": *

= restoredefaultpath <functions_manager:restoredefaultpath>

Restore Nelson’s path to its initial state at startup.

== Syntax

- #raw("restoredefaultpath");

== Description

#strong[restoredefaultpath]; restores Nelson's search path to its startup state.


== Example

``````matlab
path
path('')
path
restoredefaultpath
path
``````


== See also

#nlink(<functions_manager:rmpath>)[rmpath];, #nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:path>)[path];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
