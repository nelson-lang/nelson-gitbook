# engSetVisible

Show or hide Nelson engine session

## 📝 Syntax

- #include "engine.h"
- int engSetVisible(Engine \*ep, bool value);

## 📥 Input argument

- Engine \*ep - handle to Nelson engine.
- bool value - set value to 1 to make the engine window visible, or to 0 to make it invisible.

## 📤 Output argument

- int - 0 if successful or 1 if an error occurs.

## 📄 Description

Show or hide Nelson engine session

## 💡 Example

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## 🔗 See also

[mex](../mex/mex.md), [engGetVisible](../mex/engGetVisible.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
