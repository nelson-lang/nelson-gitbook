# copyfile

Copy files or folder.

## 📝 Syntax

- copyfile(source, destination)
- [status, msg] = copyfile(source, destination)
- [status, msg] = copyfile(source, destination, 'f')

## 📥 Input argument

- source - a string: file or directory.
- destination - a string: file or directory.
- 'f' or 'F' - force copy even destination is not writable.

## 📤 Output argument

- status - a logical true or false
- msg - a string: error message

## 📄 Description

<b>copyfile(source , destination)</b> copies the file or directory , <b>source</b> (and subdirectories) to the file or directory, <b>destination</b>.

If <b>source</b> is a directory, <b>destination</b> can not be a file.

<b>copyfile</b> replaces existing files without warning.

## 💡 Example

```matlab
copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
[status, msg] = copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
```

## 🔗 See also

[isdir](../files_folders_functions/isdir.md), [rmfile](../files_folders_functions/rmfile.md).

## 🕔 History

| Version | 📄 Description                                   |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 1.4.0   | input arguments support scalar string array type |

<!--
## 👤 Author

Allan CORNET
-->
