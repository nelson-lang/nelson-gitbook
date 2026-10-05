#import "nelson_help.typ": *

= mexCallMATLAB <mex:mexCallMATLAB>

Call a NELSON function

== Syntax

- #raw("#include \"mex.h\"");
- #raw("int mexCallMATLAB(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[], const char *command_name);");

== Input argument

/ nlhs: number of desired output arguments.
/ plhs: pointer to an array of mxArray (output).
/ nrhs: number of desired input arguments.
/ prhs: pointer to an array of mxArray (input).
/ command\_name: character string containing the name of the Nelson function called.

== Output argument

/ returned value: 0 if successful, and a nonzero value if unsuccessful.

== Description

#strong[mexCallMATLAB]; calls an NELSON function.

 If name detects an error, NELSON will terminate MEX and returns control to NELSON.


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLAB.m'])
``````


== See also

#nlink(<core:eval>)[eval];, #nlink(<mex:mexCallMATLABWithTrap>)[mexCallMATLABWithTrap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
