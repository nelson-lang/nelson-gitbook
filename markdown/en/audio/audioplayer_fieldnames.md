# audioplayer_fieldnames

Returns the properties name of an audioplayer object.

## 📝 Syntax

- l = audioplayer_fieldnames(h)
- l = fieldnames(h)

## 📥 Input argument

- h - a audioplayer object.

## 📤 Output argument

- l - a cell of strings.

## 📄 Description

<b>fieldnames</b> returns a cell of strings with properties name.

## 💡 Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
fieldnames(playObj)
delete(playObj)
clear playObj
```

## 🔗 See also

[audioplayer_set](../audio/audioplayer_set.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
