#import "nelson_help.typ": *

= MATIO

The MATIO module reads and writes MAT-files, a format used by several numerical computing environments for storing numerical data.

 It enables Nelson to check MAT-file validity, load and save workspace variables, and inspect file contents.

 This module supports data exchange between Nelson and MAT-file-compatible environments in scientific and engineering workflows.

== Functions

- #nlink(<matio:ismatfile>)[ismatfile]: Checks if filename a valid .mat file
- #nlink(<matio:loadmat>)[loadmat]: load data from .mat file into Nelson's workspace.
- #nlink(<matio:savemat>)[savemat]: save workspace variables to .mat file
- #nlink(<matio:whomat>)[whomat]: List variables in an valid .mat file.
- #nlink(<matio:whosmat>)[whosmat]: List variables in an valid .mat file with sizes and types.


#nested[
#pagebreak(weak: true)
#include "ismatfile.typ"
#pagebreak(weak: true)
#include "loadmat.typ"
#pagebreak(weak: true)
#include "savemat.typ"
#pagebreak(weak: true)
#include "whomat.typ"
#pagebreak(weak: true)
#include "whosmat.typ"
]
