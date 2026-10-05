#import "nelson_help.typ": *

= throw <error_manager:throw>

throw error.

== Syntax

- #raw("throw(MException)");

== Input argument

/ MException: MException object

== Description

#strong[throw(MException)]; throws an exception based on the information contained in the #strong[MException]; object, exception.


== Example

``````matlab

ME = MException('nelson:errorId', 'my error')
throw(ME)
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:rethrow>)[rethrow];, #nlink(<error_manager:throwAsCaller>)[throwAsCaller];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
