#import "nelson_help.typ": *

= Memory manager functions

The Memory Manager module provides tools for managing variables and memory in Nelson.

 It supports variable creation, assignment, querying, and removal across different scopes, as well as handling global and persistent variables.

 The module also supports memory inspection, variable locking, and listing of workspace contents for controlled memory usage in scripts and applications.

== Functions

- #nlink(<memory_manager:acquirevar>)[acquirevar]: Acquires variable value from a specified variables scope.
- #nlink(<memory_manager:assignin>)[assignin]: Assignin value to a variable in a specified variables scope.
- #nlink(<memory_manager:clear>)[clear]: Remove variable from workspace.
- #nlink(<memory_manager:clearvars>)[clearvars]: Remove variables from the current workspace.
- #nlink(<memory_manager:global>)[global]: Defines a global variable.
- #nlink(<memory_manager:isglobal>)[isglobal]: Checks if a variable is global.
- #nlink(<memory_manager:isvar>)[isvar]: Check for the existence of an variable.
- #nlink(<memory_manager:memory>)[memory]: Get memory information.
- #nlink(<memory_manager:persistent>)[persistent]: Persistent variable.
- #nlink(<memory_manager:varislock>)[varislock]: Checks if a variable is locked.
- #nlink(<memory_manager:varlock>)[varlock]: Locks a variable.
- #nlink(<memory_manager:varunlock>)[varunlock]: Unlocks a variable.
- #nlink(<memory_manager:who>)[who]: List variables in memory or in .nh5 or in .mat file.
- #nlink(<memory_manager:whos>)[whos]: List variables in memory or in .nh5 or in .mat file with sizes and types.


#nested[
#pagebreak(weak: true)
#include "acquirevar.typ"
#pagebreak(weak: true)
#include "assignin.typ"
#pagebreak(weak: true)
#include "clear.typ"
#pagebreak(weak: true)
#include "clearvars.typ"
#pagebreak(weak: true)
#include "global.typ"
#pagebreak(weak: true)
#include "isglobal.typ"
#pagebreak(weak: true)
#include "isvar.typ"
#pagebreak(weak: true)
#include "memory.typ"
#pagebreak(weak: true)
#include "persistent.typ"
#pagebreak(weak: true)
#include "varislock.typ"
#pagebreak(weak: true)
#include "varlock.typ"
#pagebreak(weak: true)
#include "varunlock.typ"
#pagebreak(weak: true)
#include "who.typ"
#pagebreak(weak: true)
#include "whos.typ"
]
