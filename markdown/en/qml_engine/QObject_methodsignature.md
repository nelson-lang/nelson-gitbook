# QObject_methodsignature

Returns the signature of a method of a QObject handle.

## 📝 Syntax

- res = QObject_methodsignature(h, method_name)

## 📥 Input argument

- h - an QObject handle.
- method_name - a string : method name.

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

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
