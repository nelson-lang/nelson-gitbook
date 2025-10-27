# QObject_undefine

Undefine a dynamic property of a QObject handle.

## 📝 Syntax

- QObject_undefine(h, property_name)

## 📥 Input argument

- h - an QObject handle.
- property_name - a string : dynamic property name.

## 📤 Output argument

- R - a string: method signature.

## 📄 Description

Undefine a dynamic property of a QObject handle.

## 💡 Example

```matlab
h = errordlg()
set(h, 'myProp', 33)
h
get(h, 'myProp')
QObject_undefine(h, 'myProp')
get(h, 'myProp')
```

## 🔗 See also

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
