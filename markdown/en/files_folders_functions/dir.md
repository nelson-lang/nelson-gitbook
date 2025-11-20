# dir

Returns file list.

## 📝 Syntax

- dir
- dir(dirname)
- dir(dirname, '-s')
- res =dir()
- res = dir(dirname)
- res = dir(dirname, '-s')

## 📥 Input argument

- dirname - a string: file or directory name.
- '-s' - a string: scan also subdirectories.

## 📤 Output argument

- res - a struct with fields: name, date, bytes, isdir, datenum.

## 📄 Description

<b>dir</b> displays the list of files and folders in the current folder.

\* (wildcard) is supported in filename and path name.

## 💡 Example

```matlab
res = dir(nelsonroot())
res = dir(nelsonroot(), '-s')res = dir([nelsonroot(),'/*.m'], '-s')
```

## 🔗 See also

[ls](../files_folders_functions/ls.md), [isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
