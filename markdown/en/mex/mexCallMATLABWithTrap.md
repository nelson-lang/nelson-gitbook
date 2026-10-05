# mexCallMATLABWithTrap

Call a NELSON function and capture error.

## 📝 Syntax

- #include "mex.h"
- mxArray \*mexCallMATLABWithTrap(int nlhs, mxArray \*plhs[], int nrhs, mxArray \*prhs[], const char \*functionName);

## 📥 Input argument

- nlhs - number of desired output arguments.
- plhs - pointer to an array of mxArray (output).
- nrhs - number of desired input arguments.
- prhs - pointer to an array of mxArray (input).
- command\_name - character string containing the name of the Nelson function called.

## 📤 Output argument

- returned value - NULL if no error occurred; otherwise, a pointer to an mxArray (MException object).

## 📄 Description


<b>mexCallMATLABWithTrap</b> calls an NELSON function and capture error. 

If name detects an error,<b>mexCallMATLABWithTrap</b> returns an mxArray (MException object).

## 💡 Example



```matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLABWithTrap.m'])
```


## 🔗 See also

[mexCallMATLAB](../mex/mexCallMATLAB.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
