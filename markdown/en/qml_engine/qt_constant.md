# qt_constant

Returns Qt constant value.

## 📝 Syntax

- v = qt_constant(constant_name)
- ce = qt_constant()

## 📥 Input argument

- constant_name - a string: desired Qt constant.

## 📤 Output argument

- v - a scalar integer value (Qt constant value).
- ce - a cell with all constant name available.

## 📄 Description

<b>v = qt_version(constant_name)</b> returns Qt constant value.

## 💡 Example

```matlab
qt_constant('Qt.WindowModal')
c = qt_constant()
```

## 🔗 See also

[qt_version](../qml_engine/qt_version.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
