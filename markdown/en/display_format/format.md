# format

Display format and number printing.

## 📝 Syntax

- fmt = format()
- format()
- format('default')
- format(new_style)
- format('truncateMatrices', 'on')
- format('truncateMatrices', 'off')
- format(fmt)

## 📥 Input argument

- new_style - a string or character vector
- fmt - a nelson.display.DisplayFormatOptions object

## 📤 Output argument

- fmt - nelson.display.DisplayFormatOptions object: current display format

## 📄 Description

<b>format(new_style)</b> changes the display format and number printing of the current session.

<b>format('default')</b> resets to the default format (short, loose, truncateMatrices on).

<b>fmt = format()</b> returns a <b>nelson.display.DisplayFormatOptions</b> object with the current <b>NumericFormat</b>, <b>LineSpacing</b>, and <b>TruncateMatrices</b> values.

<b>format(fmt)</b> restores the display format stored in a <b>nelson.display.DisplayFormatOptions</b> object.

Numeric formats supported:

<b>short</b>

<b>long</b>

<b>shortE</b>

<b>longE</b>

<b>shortG</b>

<b>longG</b>

<b>shortEng</b>

<b>longEng</b>

<b>+</b>

<b>bank</b>

<b>rational</b>

<b>hex</b>

Line spacing formats supported:

<b>loose</b>

<b>compact</b>

Matrix truncation formats supported:

<b>format('truncateMatrices', 'on')</b>

<b>format('truncateMatrices', 'off')</b>

## 💡 Example

Save and restore display format.

```matlab
current_style = format()
pi
format('longE')
pi
format('compact')
pi
format(current_style)
pi
```

## 🔗 See also

[nelson.display.DisplayFormatOptions](../display_format/nelson.display.DisplayFormatOptions.md), [disp](../display_format/disp.md), [display](../display_format/display.md).

## 🕔 History

| Version | 📄 Description                                                                   |
| ------- | -------------------------------------------------------------------------------- |
| 1.0.0   | initial version                                                                  |
| 2.0.0   | format returns and accepts nelson.display.DisplayFormatOptions classdef objects. |

<!--
## 👤 Author

Allan CORNET
-->
