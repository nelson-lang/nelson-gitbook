# engPutVariable

Put variable into Nelson engine workspace

## Syntax

- #include "engine.h"
- int engPutVariable(Engine *ep, const char *name, const mxArray \*pm);

## Input argument

- Engine \*ep - handle to Nelson engine.
- const char \*name - name of mxArray in the Nelson workspace (base scope).
- const mxArray \*pm - Pointer to mxArray.

## Output argument

- int - 0 if successful or 1 if an error occurs.

## Description

  <p>Put variable into Nelson engine workspace.</p>

## Example

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## See also

[mex](mex.md), [engGetVariable](engGetVariable.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
