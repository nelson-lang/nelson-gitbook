# audiorecorder_fieldnames

Returns the properties name of an audiorecorder object.

## 📝 Syntax

- l = audiorecorder_fieldnames(h)
- l = fieldnames(h)

## 📥 Input argument

- h - a audiorecorder object.

## 📤 Output argument

- l - a cell of strings.

## 📄 Description

<b>fieldnames</b> returns a cell of strings with properties name.

## 💡 Example

```matlab
recObj = audiorecorder()
fieldnames(recObj)
delete(recObj)
clear recObj
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
