# qml_addimportpath

Adds path as directory where the qml engine searches for installed modules.

## 📝 Syntax

- qml_addimportpath(path)

## 📥 Input argument

- path - a string : valid path.

## 📄 Description

<b>qml_addimportpath</b> adds<b>path</b> as a directory where the engine searches for installed modules in a URL-based directory structure.

The newly added path will be first in<b>qml_importpathlist</b>.

## 💡 Example

```matlab
qml_importpathlist()
qml_addimportpath(tempdir)
qml_importpathlist()

```

## 🔗 See also

[qml_importpathlist](../qml_engine/qml_importpathlist.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
