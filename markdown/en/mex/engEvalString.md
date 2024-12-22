# engEvalString

Evaluate expression in string in base scope

## Syntax

- #include "engine.h"
- int engEvalString(Engine *ep, const char *string);

## Input argument

- Engine \*ep - handle to Nelson engine.
- const char \*string - Expression to evaluate.

## Output argument

- int - returns 1 if the engine session is closed or invalid. Otherwise, returns 0.

## Description

  <p>Evaluate expression in string in base scope.</p>

## Example

```matlab
edit([modulepath('mex'), '/examples/mex_engine_demo_2.c'])
```

## See also

[mex](mex.md), [engPutVariable](engPutVariable.md), [engGetVariable](engGetVariable.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
