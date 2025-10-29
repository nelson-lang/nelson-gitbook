# fileparts

Returns the path, filename and extension of a file path.

## 📝 Syntax

- [p, f, e] = fileparts(fullpath)
- p = fileparts(fullpath, 'path')
- f = fileparts(fullpath, 'filename')
- e = fileparts(fullpath, 'extension')

## 📥 Input argument

- fullpath - a string: file or directory name.

## 📤 Output argument

- p - a string: path of the directory fullpath.
- f - a string: file name without extension of fullpath.
- e - a string: extension name of fullpath.

## 📄 Description

<b>[p ,f, e] = fileparts(fullpath)</b> splits in its three parts: path, filename, extension including the dot.

## 💡 Example

```matlab
[p, f, e] = fileparts([nelsonroot(), '/etc/finish.m'])
p = fileparts([nelsonroot(), '/etc/finish.m'], 'path')
f = fileparts([nelsonroot(), '/etc/finish.m'], 'filename')
e = fileparts([nelsonroot(), '/etc/finish.m'], 'extension')
```

## 🔗 See also

[isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md), [pathsep](../files_folders_functions/pathsep.md), [filesep](../files_folders_functions/filesep.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
