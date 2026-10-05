#import "nelson_help.typ": *

= rethrow <error_manager:rethrow>

rethrow error.

== Syntax

- #raw("rethrow(MException)");

== Input argument

/ MException: MException object

== Description

#strong[rethrow(MException)]; reissues the error specified by#strong[MException];.


== Example

``````matlab

try
  a
catch ME
  disp(ME)
  rethrow(ME)
end

``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:throw>)[throw];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
