# fullpath

Returns canonical full path.

## 📝 Syntax

- R = fullpath(path)

## 📥 Input argument

- path - a string or cell of string: filename to normalize.

## 📤 Output argument

- R - a string or cell of string: canonical paths.

## 📄 Description

<b>fullpath(path)</b> returns full path from a relative path.

## 💡 Example

```matlab
fullpath([nelsonroot(), '/../toto'])
```

## 🔗 See also

[relativepath](../files_folders_functions/relativepath.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
