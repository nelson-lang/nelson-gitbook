#import "nelson_help.typ": *

= addCause <error_manager:addCause>

Add cause to MException.

== Syntax

- #raw("ME = addCause(ME, causeException)");
- #raw("ME = ME.addCause(causeException)");

== Input argument

/ ME: a scalar MException object.
/ causeException: a scalar MException object to add as a cause.

== Output argument

/ ME: a new MException object containing the additional cause.

== Description

#strong[addCause]; returns a new MException object with #strong[causeException]; appended to the #strong[cause]; property.

 The original MException object is not modified.


== Examples

``````matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
causeException = MException('MYFUN:BadSubscript', 'Index must be positive.');
newException = baseException.addCause(causeException)
``````

``````matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
newException = addCause(baseException, baseException)
newException.cause{1}
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:getReport>)[getReport];, #nlink(<error_manager:throw>)[throw];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
