#import "nelson_help.typ": *

= MEX functions

The MEX module allows C\/C++ code to interface with Nelson and access Nelson's engine, variables, and functions.

== Functions

- #nlink(<mex:dlgeneratemexgateway>)[dlgeneratemexgateway]: Generates C MEX gateway (internal function).
- #nlink(<mex:engClose>)[engClose]: Close Nelson engine session
- #nlink(<mex:engEvalString>)[engEvalString]: Evaluate expression in string in base scope
- #nlink(<mex:engGetVariable>)[engGetVariable]: Copy variable from Nelson engine workspace
- #nlink(<mex:engGetVisible>)[engGetVisible]: Determine visibility of Nelson engine session
- #nlink(<mex:engOpen>)[engOpen]: Start Nelson process
- #nlink(<mex:engOpenSingleUse>)[engOpenSingleUse]: Start Nelson engine session for single and nonshared use.
- #nlink(<mex:engOutputBuffer>)[engOutputBuffer]: Specify char buffer for Nelson output
- #nlink(<mex:engPutVariable>)[engPutVariable]: Put variable into Nelson engine workspace
- #nlink(<mex:engSetVisible>)[engSetVisible]: Show or hide Nelson engine session
- #nlink(<mex:mex>)[mex]: Build MEX function
- #nlink(<mex:mexAtExit>)[mexAtExit]: Register a function to be called when the MEX-file is cleared or when Nelson exits
- #nlink(<mex:mexCallMATLAB>)[mexCallMATLAB]: Call a NELSON function
- #nlink(<mex:mexCallMATLABWithTrap>)[mexCallMATLABWithTrap]: Call a NELSON function and capture error.
- #nlink(<mex:mexext>)[mexext]: Binary MEX file-name extension


#nested[
#pagebreak(weak: true)
#include "dlgeneratemexgateway.typ"
#pagebreak(weak: true)
#include "engClose.typ"
#pagebreak(weak: true)
#include "engEvalString.typ"
#pagebreak(weak: true)
#include "engGetVariable.typ"
#pagebreak(weak: true)
#include "engGetVisible.typ"
#pagebreak(weak: true)
#include "engOpen.typ"
#pagebreak(weak: true)
#include "engOpenSingleUse.typ"
#pagebreak(weak: true)
#include "engOutputBuffer.typ"
#pagebreak(weak: true)
#include "engPutVariable.typ"
#pagebreak(weak: true)
#include "engSetVisible.typ"
#pagebreak(weak: true)
#include "mex.typ"
#pagebreak(weak: true)
#include "mexAtExit.typ"
#pagebreak(weak: true)
#include "mexCallMATLAB.typ"
#pagebreak(weak: true)
#include "mexCallMATLABWithTrap.typ"
#pagebreak(weak: true)
#include "mexext.typ"
]
