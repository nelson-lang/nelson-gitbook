# str2double

Converts a string to double.

## 📝 Syntax

- res = str2double(str)

## 📥 Input argument

- str - a cell of strings, string array or a string.

## 📤 Output argument

- res - a double

## 📄 Description

<b>str2double</b> converts any complex number as a whole into a complex numeric field, converting the real and imaginary parts to the specified numeric type.

If <b>str2double</b> cannot convert string to a number, then it returns a Not An Number value.

## 💡 Example

```matlab
R = str2double('2.6 + 3j')
R = str2double('+NaNi')
R = str2double({'2.71' '3.1415'})
R = str2double(["2.71" "3.1415"])

```

## 🔗 See also

[double](../double/double.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
