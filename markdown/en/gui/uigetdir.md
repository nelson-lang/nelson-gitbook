# uigetdir

Opens dialog box to select a directory.

## 📝 Syntax

- dir_ans = uigetdir()
- dir_ans = uigetdir(path)
- dir_ans = uigetdir(path, title)

## 📥 Input argument

- path - a string: initial path
- title - a string: title of the dialog box

## 📤 Output argument

- dir_ans - a string (returned path) or 0 if dialogbox is canceled

## 📄 Description

<b>uigetdir</b> opens a dialog box for selecting a directory.

If path is wrong or not given, the current working directory will be used.

## 💡 Example

```matlab
A = uigetdir();
```

## 🔗 See also

[pwd](../files_folders_functions/pwd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
