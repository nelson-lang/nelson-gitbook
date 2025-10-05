# Error manager

The Error Manager module provides the mechanisms for handling errors and warnings in Nelson.

It defines how exceptions are created, raised, and rethrown, as well as how diagnostic information can be retrieved after an error or warning occurs.

This module ensures that users can manage execution flow in the presence of failures, capture meaningful error reports, and display warnings without interrupting program execution.

It forms the foundation for robust error handling and debugging in Nelson applications.

## Functions

- [MException](MException.md) - Matrix Exception information.
- [error](error.md) - Raise an error message.
- [getLastReport](getLastReport.md) - Returns last recorded formatted error message.
- [lasterror](lasterror.md) - Returns last recorded error message.
- [lastwarn](lastwarn.md) - Returns last recorded warning message.
- [rethrow](rethrow.md) - rethrow error.
- [throw](throw.md) - throw error.
- [throwAsCaller](throwAsCaller.md) - Throw exception as if occurs within calling function.
- [warning](warning.md) - Display a warning message.
