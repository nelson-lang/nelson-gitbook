#import "nelson_help.typ": *

= Console

The Console module manages interaction with Nelson’s command window.

 It provides tools to control the display, handle user input, and query terminal properties.

 These features allow scripts and applications to communicate directly with the user through the console, making it easier to build interactive workflows and adapt output to the current terminal environment.

== Functions

- #nlink(<console:clc>)[clc]: Clear Command Window.
- #nlink(<console:consolebox>)[consolebox]: Displays or hides the Windows terminal associated with the Nelson session.
- #nlink(<console:input>)[input]: Display prompt and wait for user input.
- #nlink(<console:terminal_size>)[terminal\_size]: Query the size of the terminal window.


#nested[
#pagebreak(weak: true)
#include "clc.typ"
#pagebreak(weak: true)
#include "consolebox.typ"
#pagebreak(weak: true)
#include "input.typ"
#pagebreak(weak: true)
#include "terminal_size.typ"
]
