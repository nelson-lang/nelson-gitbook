#import "nelson_help.typ": *

= Engine

The Engine module manages the execution environment of Nelson itself.

 It provides mechanisms to handle program startup and shutdown behavior, command-line integration, and runtime modes.

 This includes support for user-defined initialization and termination scripts, platform-specific system requirements, and interpreter directives for cross-platform script execution.

 It serves as the core interface between Nelson and the underlying operating system, ensuring flexible configuration and smooth control over how the software is launched and operated.

== Functions

- #nlink(<engine:argv>)[argv]: Nelson command line arguments.
- #nlink(<engine:executable>)[executable]: Executables to start Nelson software.
- #nlink(<engine:finish>)[finish]: User-defined termination script for Nelson.
- #nlink(<engine:getnelsonmode>)[getnelsonmode]: Returns current Nelson mode.
- #nlink(<engine:getwebmode>)[getwebmode]: Returns the effective Nelson WebView launch mode.
- #nlink(<engine:getweburl>)[getweburl]: Returns the current Web GUI URL and port.
- #nlink(<engine:isquietmode>)[isquietmode]: Return true if Nelson started with --quiet option.
- #nlink(<engine:nelson_system_requirement>)[System Requirements]: System Requirements by platforms.
- #nlink(<engine:shebang>)[\#! shebang]: On Unix, Linux operating systems, Parses the rest of the script's initial line as an interpreter directive.
- #nlink(<engine:startup>)[startup]: User-defined startup script for Nelson.


#nested[
#pagebreak(weak: true)
#include "argv.typ"
#pagebreak(weak: true)
#include "executable.typ"
#pagebreak(weak: true)
#include "finish.typ"
#pagebreak(weak: true)
#include "getnelsonmode.typ"
#pagebreak(weak: true)
#include "getwebmode.typ"
#pagebreak(weak: true)
#include "getweburl.typ"
#pagebreak(weak: true)
#include "isquietmode.typ"
#pagebreak(weak: true)
#include "nelson_system_requirement.typ"
#pagebreak(weak: true)
#include "shebang.typ"
#pagebreak(weak: true)
#include "startup.typ"
]
