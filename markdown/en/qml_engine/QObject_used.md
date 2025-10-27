# QObject_used

Returns list of current used QObject handle.

## 📝 Syntax

- r = QObject_used()

## 📤 Output argument

- h - a vector of QObject handle.

## 📄 Description

Returns list of current used QObject handle.

## 💡 Example

```matlab
h1 = errordlg()
h2 = errordlg()
h3 = errordlg()
used = QObject_used()delete(used)
used = QObject_used()
delete(used)
used = QObject_used()
```

## 🔗 See also

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
