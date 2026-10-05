# engOpen

Start Nelson process

## 📝 Syntax

- #include "engine.h"
- Engine \*engOpen(const char \*startcmd);

## 📥 Input argument

- startcmd - Nelson startup command (NULL).

## 📤 Output argument

- Engine - handle to Nelson engine or NULL.

## 📄 Description


<b>engOpen</b> starts a Nelson process for using Nelson as a computational engine. 

Libraries path need to contain nelson path to find Nelson's libraries at runtime. 

Set the value to the path returned by the following Nelson command: 

<b>res</b> = modulepath('nelson', 'builtin') 

on linux: export LD\_LIBRARY\_PATH=$LD\_LIBRARY\_PATH:<b>res</b> 

export PATH=$PATH:<b>res</b> 

on macos: export DYLIB\_LIBRARY\_PATH=$DYLIB\_LIBRARY\_PATH:<b>res</b> 

export PATH=$PATH:<b>res</b> 

on windows: set PATH=%PATH%;<b>res</b>

## 💡 Example



```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```


## 🔗 See also

[mex](../mex/mex.md), [engClose](../mex/engClose.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
