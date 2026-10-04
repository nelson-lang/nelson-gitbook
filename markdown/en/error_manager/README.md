# Error manager

The Error Manager module provides the mechanisms for handling errors and warnings in Nelson.

It defines how exceptions are created, raised, and rethrown, as well as how diagnostic information can be retrieved after an error or warning occurs.

It lets programs control execution after failures, capture diagnostic reports, and display warnings without stopping execution.

It provides the common error and warning primitives used by Nelson code.

## Functions

- [MException.last](MException.last.md) - Return or reset last uncaught MException.
- [MException](MException.md) - Exception information.
- [addCause](addCause.md) - Add cause to MException.
- [addCorrection](addCorrection.md) - Add correction to MException.
- [error](error.md) - Raise an error message.
- [getLastReport](getLastReport.md) - Returns last recorded formatted error message.
- [getReport](getReport.md) - Get MException report.
- [lasterr](lasterr.md) - Returns or sets last recorded error message.
- [lasterror](lasterror.md) - Returns last recorded error message.
- [lastwarn](lastwarn.md) - Returns last recorded warning message.
- [nelson.lang.correction.AppendArgumentsCorrection](nelson.lang.correction.AppendArgumentsCorrection.md) - Correct error by appending missing input arguments.
- [nelson.lang.correction.ConvertToFunctionNotationCorrection](nelson.lang.correction.ConvertToFunctionNotationCorrection.md) - Correct error by converting to function notation.
- [nelson.lang.correction.ReplaceIdentifierCorrection](nelson.lang.correction.ReplaceIdentifierCorrection.md) - Correct error by replacing identifier in function call.
- [rethrow](rethrow.md) - rethrow error.
- [throw](throw.md) - throw error.
- [throwAsCaller](throwAsCaller.md) - Throw exception as if occurs within calling function.
- [warning](warning.md) - Display a warning message.
