# hour

Hours part of the input date and time.

## 📝 Syntax

- h = hour(t)
- h = hour(t, formatIn)

## 📥 Input argument

- t - serial date number or text inputs
- formatIn - valid date format

## 📤 Output argument

- h - a double: integer value.

## 📄 Description

<b>h = hour(t)</b> extracts the hour component from each date and time specified in <b>t</b>.

The output <b>h</b> is a double array containing integer values ranging from 0 to 23.

## 💡 Example

```matlab
h = hour(738427.656845093)
h = hour("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

```

## 🔗 See also

[minute](../time/minute.md), [second](../time/second.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | initial version |

## 👤 Author

Allan CORNET
