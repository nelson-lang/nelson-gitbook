#import "nelson_help.typ": *

= Function_handle functions

The Function Handle Type module provides tools for creating and managing function handles in Nelson.

 It supports anonymous functions, conversion between strings and function handles, and verification of function handle objects.

 This module enables flexible and dynamic function invocation, allowing functions to be passed, stored, and executed programmatically.

== Functions

- #nlink(<function_handle:anonymous_function>)[Anonymous Functions]: Anonymous Functions.
- #nlink(<function_handle:func2str>)[func2str]: Return a function handle constructed from a string.
- #nlink(<function_handle:isfunction_handle>)[isfunction\_handle]: Checks if value is a function handle.
- #nlink(<function_handle:str2func>)[str2func]: Returns a function handle from a string.


#nested[
#pagebreak(weak: true)
#include "anonymous_function.typ"
#pagebreak(weak: true)
#include "func2str.typ"
#pagebreak(weak: true)
#include "isfunction_handle.typ"
#pagebreak(weak: true)
#include "str2func.typ"
]
