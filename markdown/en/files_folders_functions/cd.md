# cd

Changes Nelson current directory.

## 📝 Syntax

- cd(dirname)
- cd dirname
- previous_path = cd(dirname)
- cd ..
- cd

## 📥 Input argument

- dirname - a string: directory name to move.

## 📤 Output argument

- previous_path - a string: previous directory.

## 📄 Description

Changes the current working directory to dirname.

<b>a = cd()</b> without input argument returns the current working directory.

<b>cd()</b> without input argument displays the current working directory.

## 💡 Example

```matlab
previous = cd(tempdir())
cd
cd ..

```

## 🔗 See also

[mkdir](../files_folders_functions/mkdir.md), [pwd](../files_folders_functions/pwd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
