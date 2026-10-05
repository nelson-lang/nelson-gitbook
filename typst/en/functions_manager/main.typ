#import "nelson_help.typ": *

= Functions manager

Functions manager provides tools to manage and interact with Nelson's function search path and function types.

 It includes commands to add or remove directories from the search path, execute built-in functions, clear built-in functions, evaluate functions, and more.

 Utilities are available to check for the existence of built-in, macro, or mex functions.

== Functions

- #nlink(<functions_manager:addpath>)[addpath]: Add directories to functions search path.
- #nlink(<functions_manager:builtin>)[builtin]: Executes built-in function.
- #nlink(<functions_manager:clearfun>)[clearfun]: Clear an built-in function.
- #nlink(<functions_manager:feval>)[feval]: Evaluates function.
- #nlink(<functions_manager:import>)[import]: Import names from namespaces.
- #nlink(<functions_manager:inmem>)[inmem]: Names of functions, MEX-files.
- #nlink(<functions_manager:isbuiltin>)[isbuiltin]: Check for the existence of a builtin.
- #nlink(<functions_manager:ismacro>)[ismacro]: Check for the existence of a macro (function).
- #nlink(<functions_manager:ismex>)[ismex]: Check for the existence of a mex function.
- #nlink(<functions_manager:localfunctions>)[localfunctions]: Return handles to local functions in the current file.
- #nlink(<functions_manager:macroargs>)[macroargs]: Returns variables names of a function.
- #nlink(<functions_manager:path>)[path]: Modify or display Nelson’s load path.
- #nlink(<functions_manager:private_functions>)[private functions]: Private functions.
- #nlink(<functions_manager:rehash>)[rehash]: Reinitialize Nelson’s search path directory cache.
- #nlink(<functions_manager:restoredefaultpath>)[restoredefaultpath]: Restore Nelson’s path to its initial state at startup.
- #nlink(<functions_manager:rmpath>)[rmpath]: Remove directory from search path.
- #nlink(<functions_manager:userpath>)[userpath]: Displays or modify default user functions directory.
- #nlink(<functions_manager:what>)[what]: Get Nelson builtin and macro list.
- #nlink(<functions_manager:which>)[which]: Locates functions and built-in.


#nested[
#pagebreak(weak: true)
#include "addpath.typ"
#pagebreak(weak: true)
#include "builtin.typ"
#pagebreak(weak: true)
#include "clearfun.typ"
#pagebreak(weak: true)
#include "feval.typ"
#pagebreak(weak: true)
#include "import.typ"
#pagebreak(weak: true)
#include "inmem.typ"
#pagebreak(weak: true)
#include "isbuiltin.typ"
#pagebreak(weak: true)
#include "ismacro.typ"
#pagebreak(weak: true)
#include "ismex.typ"
#pagebreak(weak: true)
#include "localfunctions.typ"
#pagebreak(weak: true)
#include "macroargs.typ"
#pagebreak(weak: true)
#include "path.typ"
#pagebreak(weak: true)
#include "private_functions.typ"
#pagebreak(weak: true)
#include "rehash.typ"
#pagebreak(weak: true)
#include "restoredefaultpath.typ"
#pagebreak(weak: true)
#include "rmpath.typ"
#pagebreak(weak: true)
#include "userpath.typ"
#pagebreak(weak: true)
#include "what.typ"
#pagebreak(weak: true)
#include "which.typ"
]
