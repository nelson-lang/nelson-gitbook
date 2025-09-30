# engOutputBuffer

Specify char buffer for Nelson output

## Syntax

- #include "engine.h"
- int engOutputBuffer(Engine *ep, char *p, int n);

## Input argument

- Engine \*ep - handle to Nelson engine.
- char \*p - Pointer to character buffer.
- int n - Length of buffer.

## Output argument

- int - returns 1 if the engine session is closed or invalid. Otherwise, returns 0.

## Description

<p>Specify char buffer for Nelson output.</p>
<p>To turn off output buffering in C, use: <b>engOutputBuffer(ep, NULL, 0);</b>
    </p>

## Example

```matlab
edit([modulepath('mex'), '/examples/mex_engine_demo_2.c'])
```

## See also

[mex](../mex/mex.md), [engPutVariable](../mex/engPutVariable.md), [engGetVariable](../mex/engGetVariable.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
