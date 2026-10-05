# QObject\_iswidgettype

Returns true if the QObject is a widget.

## 📝 Syntax

- R = QObject\_iswidgettype(h)

## 📥 Input argument

- h - an QObject handle.

## 📤 Output argument

- R - a logical.

## 📄 Description


Returns true if the QObject is a widget; otherwise returns false.

## 💡 Example



```matlab
h = errordlg()
r = QObject_iswidgettype(h)
```


## 🔗 See also

[QObject_set (set)](../qml_engine/QObject_set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
