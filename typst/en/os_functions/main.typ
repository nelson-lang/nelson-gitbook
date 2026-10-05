#import "nelson_help.typ": *

= OS functions

The OS Functions module provides tools for interacting with the operating system in Nelson.

 It includes functions for querying system information, managing environment variables, executing shell commands, generating GUIDs, and performing platform-specific operations.

 This module lets Nelson scripts interact with the operating system on Windows, macOS, and Linux\/Unix platforms.

== Functions

- #nlink(<os_functions:cmdsep>)[cmdsep]: Command separator for current operating system.
- #nlink(<os_functions:computer>)[computer]: System information.
- #nlink(<os_functions:createGUID>)[createGUID]: Creates a GUID.
- #nlink(<os_functions:dos>)[dos]: Execute a command with the operating system shell.
- #nlink(<os_functions:getenv>)[getenv]: Get the value of an environment variable.
- #nlink(<os_functions:hostname>)[hostname]: get host name of this computer.
- #nlink(<os_functions:isenv>)[isenv]: Determine if an environment variable exists.
- #nlink(<os_functions:ismac>)[ismac]: Checks if version is for MacOS platform.
- #nlink(<os_functions:ispc>)[ispc]: Checks if version is for Windows platform.
- #nlink(<os_functions:isunix>)[isunix]: Checks if version is for GNU Linux or Unix platform.
- #nlink(<os_functions:iswasm>)[iswasm]: Checks if version is for WebAssembly platform.
- #nlink(<os_functions:loadenv>)[loadenv]: Load environment variables defined in .env or regular text files.
- #nlink(<os_functions:searchenv>)[searchenv]: Searches for a file using environment paths.
- #nlink(<os_functions:setenv>)[setenv]: Set or remove an environment variable.
- #nlink(<os_functions:system>)[system]: Shell command execution.
- #nlink(<os_functions:system>)[dos]: Shell command execution.
- #nlink(<os_functions:system>)[unix]: Shell command execution.
- #nlink(<os_functions:unix>)[unix]: Execute commands with the operating system shell.
- #nlink(<os_functions:unsetenv>)[unsetenv]: Remove an environment variable.
- #nlink(<os_functions:username>)[username]: get user name currently used.
- #nlink(<os_functions:winopen>)[winopen]: Open file in appropriate application (Windows only).
- #nlink(<os_functions:winqueryreg>)[winqueryreg]: Read the Windows registry (Windows only).


#nested[
#pagebreak(weak: true)
#include "cmdsep.typ"
#pagebreak(weak: true)
#include "computer.typ"
#pagebreak(weak: true)
#include "createGUID.typ"
#pagebreak(weak: true)
#include "dos.typ"
#pagebreak(weak: true)
#include "getenv.typ"
#pagebreak(weak: true)
#include "hostname.typ"
#pagebreak(weak: true)
#include "isenv.typ"
#pagebreak(weak: true)
#include "ismac.typ"
#pagebreak(weak: true)
#include "ispc.typ"
#pagebreak(weak: true)
#include "isunix.typ"
#pagebreak(weak: true)
#include "iswasm.typ"
#pagebreak(weak: true)
#include "loadenv.typ"
#pagebreak(weak: true)
#include "searchenv.typ"
#pagebreak(weak: true)
#include "setenv.typ"
#pagebreak(weak: true)
#include "system.typ"
#pagebreak(weak: true)
#include "unix.typ"
#pagebreak(weak: true)
#include "unsetenv.typ"
#pagebreak(weak: true)
#include "username.typ"
#pagebreak(weak: true)
#include "winopen.typ"
#pagebreak(weak: true)
#include "winqueryreg.typ"
]
