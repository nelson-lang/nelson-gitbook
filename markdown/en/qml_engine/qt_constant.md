# qt\_constant

Returns Qt constant value.

## 📝 Syntax

- v = qt\_constant(constant\_name)
- ce = qt\_constant()

## 📥 Input argument

- constant\_name - a string: desired Qt constant.

## 📤 Output argument

- v - a scalar integer value (Qt constant value).
- ce - a cell with all constant name available.

## 📄 Description


<b>v = qt\_version(constant\_name)</b> returns Qt constant value.

## 💡 Example



```matlab
qt_constant('Qt.WindowModal')
c = qt_constant()
```


## 🔗 See also

[qt_version](../qml_engine/qt_version.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
