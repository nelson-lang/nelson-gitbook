# audiorecorder_get

Get property value from audiorecorder interface.

## 📝 Syntax

- v = get(h, propertyname)
- v = audiorecorder_get(h, propertyname)
- v = h.propertyname

## 📥 Input argument

- h - an audiorecorder object.
- propertyname - a string: the property's name of audiorecorder object.

## 📤 Output argument

- v - a nelson variable.

## 📄 Description

The function returns the value of the property specified in the string, propertyname.

## 💡 Example

```matlab
recObj = audiorecorder()
recObj.Running

```

## 🔗 See also

[audiorecorder_set](../audio/audiorecorder_set.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
