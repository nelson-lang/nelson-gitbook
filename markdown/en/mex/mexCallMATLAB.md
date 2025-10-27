# mexCallMATLAB

Call a NELSON function

## 📝 Syntax

- #include "mex.h"
- int mexCallMATLAB(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[], const char \*command_name);

## 📥 Input argument

- nlhs - number of desired output arguments.
- plhs - pointer to an array of mxArray (output).
- nrhs - number of desired input arguments.
- prhs - pointer to an array of mxArray (input).
- command_name - character string containing the name of the Nelson function called.

## 📤 Output argument

- returned value - 0 if successful, and a nonzero value if unsuccessful.

## 📄 Description

<b>mexCallMATLAB</b> calls an NELSON function.

If name detects an error, NELSON will terminate MEX and returns control to NELSON.

## 💡 Example

```matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLAB.m'])
```

## 🔗 See also

[eval](../core/eval.md), [mexCallMATLABWithTrap](../mex/mexCallMATLABWithTrap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
