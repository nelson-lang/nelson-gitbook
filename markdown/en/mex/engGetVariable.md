# engGetVariable

Copy variable from Nelson engine workspace

## 📝 Syntax

- #include "engine.h"
- mxArray \*engGetVariable(Engine \*ep, const char \*name);

## 📥 Input argument

- Engine \*ep - handle to Nelson engine.
- const char \*name - name of mxArray in the Nelson workspace (base scope).

## 📤 Output argument

- mxArray \* - Pointer to an allocated mxArray structure. Do not forget to free.

## 📄 Description

Copy variable from Nelson engine workspace.

The limit for the size of data transferred is 2048 MB.

## 💡 Example

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## 🔗 See also

[mex](../mex/mex.md), [engPutVariable](../mex/engPutVariable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
