#import "nelson_help.typ": *

= MException.last <error_manager:MException.last>

Return or reset last uncaught MException.

== Syntax

- #raw("exception = MException.last");
- #raw("MException.last('reset')");

== Output argument

/ exception: a MException object.

== Description

#strong[MException.last]; returns the last uncaught exception recorded by the evaluator. Exceptions handled by a catch block do not update it.

 #strong[MException.last('reset')]; clears the recorded exception.


== Example

``````matlab
MException.last('reset');
exception = MException.last
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:getLastReport>)[getLastReport];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
