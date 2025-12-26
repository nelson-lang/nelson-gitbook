# audiorecorder_set

Set object or interface property to specified value.

## 📝 Syntax

- set(h, propertyname, value)
- audiorecorder_set(h, propertyname, value)
- h.propertyname = value

## 📥 Input argument

- h - a audiorecorder object.
- propertyname - a string: the property's name of audiorecorder object.
- value - a string, boolean, double ...

## 📄 Description

The function sets the property specified in the string propertyname to the given value.

## 💡 Example

```matlab
recObj = audiorecorder()
recObj.Tag = 'my audio object'
```

## 🔗 See also

[audiorecorder_get](../audio/audiorecorder_get.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
