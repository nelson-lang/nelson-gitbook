#import "nelson_help.typ": *

= Inter Process Communication

The ipc module provides basic tools for interacting with processes and enabling communication between them.

 It allows retrieving process identifiers and using a communicator object for exchanging information across Nelson processes.

== Functions

- #nlink(<ipc:getpid>)[getpid]: Get nelson(s) Process IDentificator.
- #nlink(<ipc:ipc>)[ipc]: Inter process communicator.


#nested[
#pagebreak(weak: true)
#include "getpid.typ"
#pagebreak(weak: true)
#include "ipc.typ"
]
