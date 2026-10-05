# QObject\_set

Set a property value of an QObject handle (set).

## 📝 Syntax

- R = set(h, property\_name, value)

## 📥 Input argument

- h - an QObject handle.
- property\_name - a string: property name.
- value - a variable.

## 📤 Output argument

- R - user-settable properties and possible values for the object identified by h.

## 📄 Description


This routine can be used to modify the value of a specified property from an QObject object.

## 💡 Example



```matlab
h = errordlg()
h.visible = false; % or set(h, 'visible', false)
h.windowTitle = 'new title' % or set(h, 'windowTitle', 'new title')
h.visible = true;
```


## 🔗 See also

[set](../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
