# addpath

Add directories to functions search path.

## 📝 Syntax

- addpath(dirname)
- addpath(dirname, ..., dirname)
- addpath(dirname, ..., dirname, '-begin')
- addpath(dirname, ..., dirname, '-end')
- addpath(dirname, ..., dirname, '-frozen')
- previous = addpath(dirname)
- previous = addpath(dirname, ..., dirname)
- previous = addpath(dirname, ..., dirname, '-begin')
- previous = addpath(dirname, ..., dirname, '-end')

## 📥 Input argument

- dirname - a string: a directory
- '-end' or '-begin' - append dirname at the end or begin of the list.
- '-frozen' - disables folder change detection for the folders being added or modified.

## 📤 Output argument

- previous - returns previous path before adding

## 📄 Description


<b>addpath</b> add directories to search path. 

It is also possible to add lists of directory names separated by pathsep. 

Non-existent path will not be added and a warning will be issued. 

files watchers is disabled for internal modules.

## 💡 Example



```matlab
path()
addpath(tempdir())
path
rmpath(tempdir())
path
```


## 🔗 See also

[path](../functions_manager/path.md), [rmpath](../functions_manager/rmpath.md), [restoredefaultpath](../functions_manager/restoredefaultpath.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
