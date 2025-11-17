# Interpreter functions

The Interpreter Functions module provides the core language constructs and control mechanisms that define the execution flow in Nelson.

It includes essential elements such as loops, conditional branching, error handling, and function declarations.

The module also offers tools for parsing code, working with keywords, and managing recursion limits.

Together, these features establish the fundamental syntax and semantics of the Nelson language, enabling users to write structured, dynamic, and reliable programs.

## Functions

- [abort](abort.md) - stop evaluation.
- [return](abort.md) - stop evaluation.
- [break](break.md) - exit evaluation loop.
- [continue](continue.md) - continue evaluation in loop.
- [for](for.md) - for loop.
- [parfor](for.md) - for loop.
- [function](function.md) - function declaration.
- [endfunction](function.md) - function declaration.
- [if](if.md) - conditional statement.
- [tilde](ignore_outputs_function.md) - Ignore outputs function.
- [iskeyword](iskeyword.md) - Returns all Nelson keywords.
- [keyboard](keyboard.md) - Stops script execution and enter in debug mode.
- [max_recursion_depth](max_recursion_depth.md) - Internal limit on the number of times a function may be called recursively.
- [name=value](name_value_syntax.md) - Name=value syntax for name-value arguments.
- [numeric types](numeric_types.md) - About integer and floating-point data.
- [parsefile](parsefile.md) - Parse a Nelson file.
- [parsestring](parsestring.md) - Parse a string.
- [switch](switch.md) - switch statement.
- [try](try.md) - try/catch statement.
- [catch](try.md) - try/catch statement.
- [while](while.md) - while loop.
