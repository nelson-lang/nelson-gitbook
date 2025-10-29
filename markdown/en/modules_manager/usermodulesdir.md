# usermodulesdir

Returns path where external modules are saved.

## 📝 Syntax

- p = usermodulesdir()

## 📤 Output argument

- p - a string: path where are external modules.

## 📄 Description

<b>usermodulesdir</b> is an helper's function to return path where users modules are saved.

This path can be overloaded by defining NELSON_EXTERNAL_MODULES_PATH environment variable on your system.

## 💡 Example

```matlab
usermodulesdir()
```

## 🔗 See also

[toolboxdir](../modules_manager/toolboxdir.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
