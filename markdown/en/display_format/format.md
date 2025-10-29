# format

Display format and number printing.

## 📝 Syntax

- fmt = format()
- format()
- format('default')
- format(new_style)

## 📥 Input argument

- new_style - a string

## 📤 Output argument

- fmt - DisplayFormatOptions object: format used

## 📄 Description

<b>format(new_style)</b> changes the display format and number printing of the current session.

<b>format('default')</b> will reset to default format (short, loose).

Styles supported:

<b>short</b>

<b>long</b>

<b>shortE</b>

<b>longE</b>

<b>shortEng</b>

<b>longEng</b>

<b>plus</b>

<b>rational</b>

<b>hex</b>

Line Spacing Format supported:

<b>loose</b>

<b>compact</b>

## 💡 Example

an example

```matlab
current_style = format()
pi
format('short')
pi
format('long')
pi
format('shortE')
pi
format('longE')
pi
format('hex')
pi
format('+')
pi
format('rational')
pi
format('compact')
pi
format(current_style)
pi
```

## 🔗 See also

[disp](../display_format/disp.md), [display](../display_format/display.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
