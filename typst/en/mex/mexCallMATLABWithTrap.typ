#import "nelson_help.typ": *

= mexCallMATLABWithTrap <mex:mexCallMATLABWithTrap>

Call a NELSON function and capture error.

== Syntax

- #raw("#include \"mex.h\"");
- #raw("mxArray *mexCallMATLABWithTrap(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[], const char *functionName);");

== Input argument

/ nlhs: number of desired output arguments.
/ plhs: pointer to an array of mxArray (output).
/ nrhs: number of desired input arguments.
/ prhs: pointer to an array of mxArray (input).
/ command\_name: character string containing the name of the Nelson function called.

== Output argument

/ returned value: NULL if no error occurred; otherwise, a pointer to an mxArray (MException object).

== Description

#strong[mexCallMATLABWithTrap]; calls an NELSON function and capture error.

 If name detects an error,#strong[mexCallMATLABWithTrap]; returns an mxArray (MException object).


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLABWithTrap.m'])
``````


== See also

#nlink(<mex:mexCallMATLAB>)[mexCallMATLAB];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
