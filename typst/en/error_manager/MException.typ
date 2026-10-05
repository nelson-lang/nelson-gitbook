#import "nelson_help.typ": *

= MException <error_manager:MException>

Exception information.

== Syntax

- #raw("ME = MException(identifier, message)");
- #raw("ME = MException(identifier, format, A, ...)");
- #raw("ME = addCause(ME, causeException)");
- #raw("ME = ME.addCause(causeException)");
- #raw("ME = addCorrection(ME, correction)");
- #raw("report = getReport(ME)");
- #raw("report = ME.getReport(type)");
- #raw("exception = MException.last");
- #raw("MException.last('reset')");

== Input argument

/ identifier: a string: error identifier.
/ message: a string.
/ format: a string used to format the error message.
/ causeException: a scalar MException object.
/ correction: a nelson.lang.correction object.
/ type: 'basic' or 'extended'.

== Output argument

/ ME: a MException object.
/ report: a string: formatted exception report.

== Description

All Nelson code that detects an error and throws an exception constructs an MException object.

 identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty').

 #strong[MException]; is a built-in class. It has the read-only properties #strong[identifier];, #strong[message];, #strong[cause];, #strong[stack];, and #strong[Correction];.

 #strong[ME \= MException(identifier, format, A, ...)]; formats the message using the same formatting rules as #strong[sprintf];.

 #strong[addCause]; returns a new MException object with an additional cause.

 #strong[addCorrection]; returns a new MException object with a correction object. Nelson correction objects are in the #strong[nelson.lang.correction]; package.

 #strong[getReport]; returns a formatted exception report.

 #strong[MException.last]; returns the last uncaught exception recorded by the evaluator. #strong[MException.last('reset')]; clears it.


== Examples

``````matlab
ME = MException('nelson:identifier', 'your error message.');
throw(ME)
``````

``````matlab
ME = MException('nelson:badIndex', 'Unable to index into array %s.', 'A');
causeException = MException('nelson:badSubscript', 'Index must be positive.');
ME = ME.addCause(causeException)
getReport(ME, 'basic')
``````

``````matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
``````


== See also

#nlink(<error_manager:error>)[error];, #nlink(<interpreter:try>)[try];, #nlink(<error_manager:throw>)[throw];, #nlink(<error_manager:rethrow>)[rethrow];, #nlink(<error_manager:throwAsCaller>)[throwAsCaller];, #nlink(<error_manager:addCause>)[addCause];, #nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:getReport>)[getReport];, #nlink(<error_manager:MException.last>)[MException.last];, #nlink(<error_manager:lasterror>)[lasterror];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
