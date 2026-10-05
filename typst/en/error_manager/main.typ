#import "nelson_help.typ": *

= Error manager

The Error Manager module provides the mechanisms for handling errors and warnings in Nelson.

 It defines how exceptions are created, raised, and rethrown, as well as how diagnostic information can be retrieved after an error or warning occurs.

 It lets programs control execution after failures, capture diagnostic reports, and display warnings without stopping execution.

 It provides the common error and warning primitives used by Nelson code.

== Functions

- #nlink(<error_manager:MException.last>)[MException.last]: Return or reset last uncaught MException.
- #nlink(<error_manager:MException>)[MException]: Exception information.
- #nlink(<error_manager:addCause>)[addCause]: Add cause to MException.
- #nlink(<error_manager:addCorrection>)[addCorrection]: Add correction to MException.
- #nlink(<error_manager:error>)[error]: Raise an error message.
- #nlink(<error_manager:getLastReport>)[getLastReport]: Returns last recorded formatted error message.
- #nlink(<error_manager:getReport>)[getReport]: Get MException report.
- #nlink(<error_manager:lasterr>)[lasterr]: Returns or sets last recorded error message.
- #nlink(<error_manager:lasterror>)[lasterror]: Returns last recorded error message.
- #nlink(<error_manager:lastwarn>)[lastwarn]: Returns last recorded warning message.
- #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection]: Correct error by appending missing input arguments.
- #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection]: Correct error by converting to function notation.
- #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection]: Correct error by replacing identifier in function call.
- #nlink(<error_manager:rethrow>)[rethrow]: rethrow error.
- #nlink(<error_manager:throw>)[throw]: throw error.
- #nlink(<error_manager:throwAsCaller>)[throwAsCaller]: Throw exception as if occurs within calling function.
- #nlink(<error_manager:warning>)[warning]: Display a warning message.


#nested[
#pagebreak(weak: true)
#include "MException.last.typ"
#pagebreak(weak: true)
#include "MException.typ"
#pagebreak(weak: true)
#include "addCause.typ"
#pagebreak(weak: true)
#include "addCorrection.typ"
#pagebreak(weak: true)
#include "error.typ"
#pagebreak(weak: true)
#include "getLastReport.typ"
#pagebreak(weak: true)
#include "getReport.typ"
#pagebreak(weak: true)
#include "lasterr.typ"
#pagebreak(weak: true)
#include "lasterror.typ"
#pagebreak(weak: true)
#include "lastwarn.typ"
#pagebreak(weak: true)
#include "nelson.lang.correction.AppendArgumentsCorrection.typ"
#pagebreak(weak: true)
#include "nelson.lang.correction.ConvertToFunctionNotationCorrection.typ"
#pagebreak(weak: true)
#include "nelson.lang.correction.ReplaceIdentifierCorrection.typ"
#pagebreak(weak: true)
#include "rethrow.typ"
#pagebreak(weak: true)
#include "throw.typ"
#pagebreak(weak: true)
#include "throwAsCaller.typ"
#pagebreak(weak: true)
#include "warning.typ"
]
