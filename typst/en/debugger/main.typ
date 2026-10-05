#import "nelson_help.typ": *

= Debugger functions

The Debugger module in Nelson provides functions to inspect and analyze program execution.

 It is designed to help users identify errors, trace the flow of execution, and better understand the state of variables during runtime.

 Text editor debugging features integrate with these functions for interactive debugging.

== Functions

- #nlink(<debugger:dbclear>)[dbclear]: Remove breakpoints during debugging.
- #nlink(<debugger:dbcont>)[dbcont]: Resume execution from a paused breakpoint.
- #nlink(<debugger:dbdown>)[dbdown]: Move down the call stack in debug mode.
- #nlink(<debugger:dbquit>)[dbquit]: Quit debug mode.
- #nlink(<debugger:dbstack>)[dbstack]: call stack.
- #nlink(<debugger:dbstatus>)[dbstatus]: List all breakpoints during debugging.
- #nlink(<debugger:dbstep>)[dbstep]: Execute next executable line during debugging.
- #nlink(<debugger:dbstop>)[dbstop]: Set breakpoints for debugging.
- #nlink(<debugger:dbup>)[dbup]: Move up the call stack in debug mode.


#nested[
#pagebreak(weak: true)
#include "dbclear.typ"
#pagebreak(weak: true)
#include "dbcont.typ"
#pagebreak(weak: true)
#include "dbdown.typ"
#pagebreak(weak: true)
#include "dbquit.typ"
#pagebreak(weak: true)
#include "dbstack.typ"
#pagebreak(weak: true)
#include "dbstatus.typ"
#pagebreak(weak: true)
#include "dbstep.typ"
#pagebreak(weak: true)
#include "dbstop.typ"
#pagebreak(weak: true)
#include "dbup.typ"
]
