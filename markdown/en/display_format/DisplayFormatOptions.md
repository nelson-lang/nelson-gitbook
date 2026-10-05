# nelson.display.DisplayFormatOptions

Display format options object.

## 📝 Syntax

- fmt = nelson.display.DisplayFormatOptions()
- fmt = nelson.display.DisplayFormatOptions(Name, Value)

## 📥 Input argument

- Name, Value - name-value pairs for NumericFormat, LineSpacing, and TruncateMatrices

## 📤 Output argument

- fmt - display format options object

## 📄 Description


<b>nelson.display.DisplayFormatOptions</b> stores display format options used by <b>format</b>. 

The object has three public properties: <b>NumericFormat</b>, <b>LineSpacing</b>, and <b>TruncateMatrices</b>. 

<b>NumericFormat</b> can be <b>short</b>, <b>long</b>, <b>shortE</b>, <b>longE</b>, <b>shortG</b>, <b>longG</b>, <b>shortEng</b>, <b>longEng</b>, <b>+</b>, <b>bank</b>, <b>hex</b>, or <b>rational</b>. 

<b>LineSpacing</b> can be <b>compact</b> or <b>loose</b>. 

<b>TruncateMatrices</b> can be <b>on</b> or <b>off</b>. In the graphical command window, <b>on</b> truncates large two-dimensional numeric, logical, and sparse matrices when their full display exceeds the visible area.

## 💡 Example

Save and restore display format.

```matlab
oldFormat = format();
fmt = nelson.display.DisplayFormatOptions('NumericFormat', 'longE', 'LineSpacing', 'compact', 'TruncateMatrices', 'on');
format(fmt)
format(oldFormat)
```


## 🔗 See also

[format](../display_format/format.md), [disp](../display_format/disp.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
