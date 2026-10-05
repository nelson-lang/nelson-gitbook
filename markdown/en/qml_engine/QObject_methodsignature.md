# QObject\_methodsignature

Returns the signature of a method of a QObject handle.

## 📝 Syntax

- res = QObject\_methodsignature(h, method\_name)

## 📥 Input argument

- h - an QObject handle.
- method\_name - a string : method name.

## 📤 Output argument

- R - a string: method signature.

## 📄 Description


Returns the signature of a method of a QObject handle.

## 💡 Example



```matlab
h = errordlg()
QObject_methodsignature(h, 'setVisible')
```


## 🔗 See also

[QObject_invoke (invoke)](../handle/invoke.md), [QObject_methods (methods)](../handle/methods.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
