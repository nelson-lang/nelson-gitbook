# engGetVisible

Determine visibility of Nelson engine session

## Syntax

- #include "engine.h"
- int engGetVisible(Engine *ep, bool *value);

## Input argument

- Engine \*ep - handle to Nelson engine.

## Output argument

- int - 0 if successful or 1 if an error occurs.
- bool \* - true (visible) or false (minimize).

## Description

  <p>Determine visibility of Nelson engine session</p>

## Example

```matlab
edit([modulepath('mex'), '/tests/test_engine.c'])
```

## See also

[mex](mex.md), [engSetVisible](engSetVisible.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
