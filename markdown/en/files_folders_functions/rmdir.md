# rmdir

Removes a directory.

## 📝 Syntax

- rmdir(dirname)
- rmdir(dirname, 's')
- res = rmdir(dirname)
- res = rmdir(dirname, 's')
- [res, msg] = rmdir(dirname)
- [res, msg] = rmdir(dirname, 's')

## 📥 Input argument

- dirname - a string: file or directory name.
- 's' - a string: removes also subdirectories.

## 📤 Output argument

- res - a logical: true or false.
- msg - a string: error message or ''.

## 📄 Description

<b>res = rmdir(dirname)</b> removes the directory<b>dirname</b>.

If the directory is not empty, you must use the s argument.

## 💡 Example

```matlab

mkdir([tempdir(), 'test'])
rmdir([tempdir(), 'test'])

```

## 🔗 See also

[isdir](../files_folders_functions/isdir.md), [mkdir](../files_folders_functions/mkdir.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
