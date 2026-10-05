# dlopen

Loads an dynamic library.

## 📝 Syntax

- lib = dlopen(libraryname)

## 📥 Input argument

- libraryname - a string: dynamic library name.

## 📤 Output argument

- lib - a dllib handle.

## 📄 Description


<b>dlopen</b> loads an dynamic library. 

<b>dlopen</b> returns a <b>dllib</b> handle with<b>Path</b> property. 

<b>get</b>, <b>ismethod</b>, <b>isprop</b>, <b>disp</b>,<b>delete</b>, <b>isvalid</b>, <b>used</b>, <b>eq</b>, <b>ne</b>,<b>isequal</b>, <b>horzcat</b>, <b>vertcat</b> are overloaded for<b>dllib</b> type. 

library is searched first in NELSON\_LIBRARY\_PATH and after in PATH on windows or LD\_LIBRARY\_PATH or DYLD\_LIBRARY\_PATH on linux or Macos. 

NELSON\_LIBRARY\_PATH can modified with <b>setenv</b>.

## 💡 Example



```matlab
path_1 = modulepath('dynamic_link', 'builtin');
lib1 = dlopen(path_1)
isvalid(lib1)
dlclose(lib1)
isvalid(lib1)
clear lib1
```


## 🔗 See also

[dlclose](../dynamic_link/dlclose.md), [dllibisloaded](../dynamic_link/dllibisloaded.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
