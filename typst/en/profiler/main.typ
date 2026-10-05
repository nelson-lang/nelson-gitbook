#import "nelson_help.typ": *

= Profiling tools

The Profiler module in Nelson provides functions to measure and analyze the execution performance of code.

 It helps users identify bottlenecks, optimize slow parts of programs, and improve overall efficiency.

== Functions

- #nlink(<profiler:profile>)[profile]: Profile execution time for Macro functions.
- #nlink(<profiler:profsave>)[profsave]: Save profile result to HTML format.


#nested[
#pagebreak(weak: true)
#include "profile.typ"
#pagebreak(weak: true)
#include "profsave.typ"
]
