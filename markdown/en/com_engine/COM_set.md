# COM_set

Set object or interface property to specified value.

## 📝 Syntax

- set(h, propertyname, value)
- COM_set(h, propertyname, value)
- h.propertyname = value

## 📥 Input argument

- h - a COM object.
- propertyname - a string: the property's name of COM object.
- value - a string, boolean, double ...

## 📄 Description

The function sets the property specified in the string propertyname to the given value.

## 💡 Example

```matlab
pWord = actxserver('Word.Application')
pWord.Visible = true
invoke(pWord, 'Quit')
delete(pWord)
clear pWord
```

## 🔗 See also

[COM_get](../com_engine/COM_get.md), [COM_invoke](../com_engine/COM_invoke.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
