# engClose

Close Nelson engine session

## Syntax

- #include "engine.h"
- int engClose(Engine \*ep);

## Input argument

- Engine \*ep - handle to Nelson engine.

## Output argument

- int - 0 on success and 1 on failure.

## Description

  <p>engClose closes engine session and terminates the connection.</p>

## Example

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## See also

[mex](mex.md), [engOpen](engOpen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
