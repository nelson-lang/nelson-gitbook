# QObject_get

Retrieve a property value from an QObject handle.

## 📝 Syntax

- R = get(h, property_name)

## 📥 Input argument

- h - an QObject handle.
- property_name - a string: property name.

## 📤 Output argument

- R - The data type of the return value depends on the invoked method.

## 📄 Description

<b>R = get(h, property_name)</b> returns the value of property asked.

## 💡 Example

```matlab
h = errordlg();
h.visible % or get(h, 'visible')
h.windowTitle % or get(h, 'windowTitle')
```

## 🔗 See also

[QObject_set (set)](../qml_engine/QObject_set.md), [get](../handle/get.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
