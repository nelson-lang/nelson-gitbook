#import "nelson_help.typ": *

= throwAsCaller <error_manager:throwAsCaller>

Throw exception as if occurs within calling function.

== Syntax

- #raw("throwAsCaller(MException)");

== Input argument

/ MException: MException object

== Description

It throws an exception as if it occurs within the calling function.


== Example

``````matlab

function test_throwAsCaller()
  ME = MException('n:m', 'your error')
  throwAsCaller(ME)
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:rethrow>)[rethrow];, #nlink(<error_manager:throw>)[throw];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
