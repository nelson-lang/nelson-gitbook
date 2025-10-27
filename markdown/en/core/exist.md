# exist

Check for the existence.

## 📝 Syntax

- res = exist(name)
- res = exist(name, category)

## 📥 Input argument

- name - a string: name of variable, function, file or directory.
- category - a string: 'var', 'builtin', 'file', or 'dir'.

## 📤 Output argument

- res - a integer value.

## 📄 Description

<b>exists</b> checks for the existence of variable, builtin, file or directory.

<b>exists</b> returns:

<b>0</b> does not exist

<b>1</b> is an variable

<b>2</b> is a file

<b>3</b> is a mex function

<b>5</b> is a builtin or function

<b>7</b> is a directory

## 💡 Example

```matlab
exist('fileread')
fileread = 3;
exist('fileread')
clear fileread
exist('fileread')

```

## 🔗 See also

[isbuiltin](../functions_manager/isbuiltin.md), [ismacro](../functions_manager/ismacro.md), [isfile](../files_folders_functions/isfile.md), [isdir](../files_folders_functions/isdir.md), [isvar](../memory_manager/isvar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
