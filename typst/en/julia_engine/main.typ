#import "nelson_help.typ": *

= Julia engine

The Julia Engine module lets Nelson call Julia code and use Julia numerical libraries from the Nelson environment.

 It provides functions to run Julia code, manage interpreter environments, and exchange data between Nelson and Julia.

== Functions

- #nlink(<julia_engine:jlenv>)[jlenv]: Change default environment of Julia interpreter.
- #nlink(<julia_engine:jlrun>)[jlrun]: Run Julia statements from Nelson.
- #nlink(<julia_engine:jlrunfile>)[jlrunfile]: Run Julia file from Nelson.
- #nlink(<julia_engine:julia_types>)[Julia Nelson types]: Managing Data between Julia and Nelson.


#nested[
#pagebreak(weak: true)
#include "jlenv.typ"
#pagebreak(weak: true)
#include "jlrun.typ"
#pagebreak(weak: true)
#include "jlrunfile.typ"
#pagebreak(weak: true)
#include "julia_types.typ"
]
