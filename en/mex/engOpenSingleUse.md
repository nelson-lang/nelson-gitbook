# engOpenSingleUse

Start Nelson engine session for single and nonshared use.

## Syntax

- #include "engine.h"
- Engine *engOpenSingleUse(const char *startcmd, void *dcom, int *retstatus);

## Input argument

- startcmd - Nelson startup command (NULL).
- dcom - must be NULL.

## Output argument

- Engine - handle to Nelson engine or NULL.
- retstatus - status; possible cause of failure.

## Description

  <p>engOpenSingleUse start Nelson engine session for single and nonshared use.</p>

## Example

```matlab
edit([modulepath('mex'), '/tests/test_engine.c'])
```

## See also

[mex](mex.md), [engClose](engClose.md), [engOpen](engOpen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
