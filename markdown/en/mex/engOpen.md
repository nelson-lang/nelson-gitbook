# engOpen

Start Nelson process

## Syntax

- #include "engine.h"
- Engine *engOpen(const char *startcmd);

## Input argument

- startcmd - Nelson startup command (NULL).

## Output argument

- Engine - handle to Nelson engine or NULL.

## Description

  <p><b>engOpen</b> starts a Nelson process for using Nelson as a computational engine.</p>
  <p>Libraries path need to contain nelson path to find Nelson's libraries at runtime.</p>
  <p>Set the value to the path returned by the following Nelson command:</p>
  <p><b>res</b> = modulepath('nelson', 'builtin')</p>
  <p>on linux: export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:<b>res</b></p>
  <p>export PATH=$PATH:<b>res</b></p>
  <p>on macos: export DYLIB_LIBRARY_PATH=$DYLIB_LIBRARY_PATH:<b>res</b></p>
  <p>export PATH=$PATH:<b>res</b></p>
  <p>on windows: set PATH=%PATH%;<b>res</b></p>

## Example

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## See also

[mex](mex.md), [engClose](engClose.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
