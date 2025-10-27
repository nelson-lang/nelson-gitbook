# engOpenSingleUse

Start Nelson engine session for single and nonshared use.

## 📝 Syntax

- #include "engine.h"
- Engine *engOpenSingleUse(const char *startcmd, void *dcom, int *retstatus);

## 📥 Input argument

- startcmd - Nelson startup command (NULL).
- dcom - must be NULL.

## 📤 Output argument

- Engine - handle to Nelson engine or NULL.
- retstatus - status; possible cause of failure.

## 📄 Description

engOpenSingleUse start Nelson engine session for single and nonshared use.

## 💡 Example

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## 🔗 See also

[mex](../mex/mex.md), [engClose](../mex/engClose.md), [engOpen](../mex/engOpen.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
