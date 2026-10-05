#import "nelson_help.typ": *

= Display format

The Display Format module defines how values, variables, and expressions are presented in Nelson.

 It offers control over numeric formatting, text representation, and the way results are shown in the console.

 The module also provides mechanisms for capturing formatted output programmatically, enabling both human-readable display and programmatic handling of results.

 This ensures flexibility in how information is presented and reused within scripts and applications.

== Functions

- #nlink(<display_format:DisplayFormatOptions>)[nelson.display.DisplayFormatOptions]: Display format options object.
- #nlink(<display_format:disp>)[disp]: Display a variable.
- #nlink(<display_format:display>)[display]: Show information about variable or result of expression.
- #nlink(<display_format:echo>)[echo]: Controls the echoing during their execution.
- #nlink(<display_format:format>)[format]: Display format and number printing.
- #nlink(<display_format:formattedDisplayText>)[formattedDisplayText]: Capture display output as string.


#nested[
#pagebreak(weak: true)
#include "DisplayFormatOptions.typ"
#pagebreak(weak: true)
#include "disp.typ"
#pagebreak(weak: true)
#include "display.typ"
#pagebreak(weak: true)
#include "echo.typ"
#pagebreak(weak: true)
#include "format.typ"
#pagebreak(weak: true)
#include "formattedDisplayText.typ"
]
