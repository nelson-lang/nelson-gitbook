# mexAtExit

Register a function to be called when the MEX-file is cleared or when Nelson exits

## 📝 Syntax

- #include "mex.h"
- int mexAtExit(void (\*ExitFcn)(void));

## 📥 Input argument

- ExitFcn - Pointer to function you wish to run on exit.

## 📤 Output argument

- returned value - returns 0.

## 📄 Description

Each MEX can register only one active exit subroutine at a time.

<b>mexAtExit</b> registers a subroutine to be called just when Nelson is finished or<b>clear</b> is called.

## 💡 Example

```matlab
edit([modulepath('mex', 'tests'), '/test_mexAtExit.m'])
```

## 🔗 See also

[exit](../core/exit.md), [clear](../memory_manager/clear.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
