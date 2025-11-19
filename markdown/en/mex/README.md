# MEX functions

The MEX (MATLAB Executable) module allows C/C++ code to interface with Nelson, extending its functionality and enabling access to Nelson’s engine, variables, and functions.

## Functions

- [dlgeneratemexgateway](dlgeneratemexgateway.md) - Generates C MEX gateway (internal function).
- [engClose](engClose.md) - Close Nelson engine session
- [engEvalString](engEvalString.md) - Evaluate expression in string in base scope
- [engGetVariable](engGetVariable.md) - Copy variable from Nelson engine workspace
- [engGetVisible](engGetVisible.md) - Determine visibility of Nelson engine session
- [engOpen](engOpen.md) - Start Nelson process
- [engOpenSingleUse](engOpenSingleUse.md) - Start Nelson engine session for single and nonshared use.
- [engOutputBuffer](engOutputBuffer.md) - Specify char buffer for Nelson output
- [engPutVariable](engPutVariable.md) - Put variable into Nelson engine workspace
- [engSetVisible](engSetVisible.md) - Show or hide Nelson engine session
- [mex](mex.md) - Build MEX function
- [mexAtExit](mexAtExit.md) - Register a function to be called when the MEX-file is cleared or when Nelson exits
- [mexCallMATLAB](mexCallMATLAB.md) - Call a NELSON function
- [mexCallMATLABWithTrap](mexCallMATLABWithTrap.md) - Call a NELSON function and capture error.
- [mexext](mexext.md) - Binary MEX file-name extension
