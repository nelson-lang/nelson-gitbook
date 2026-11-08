# str2num

Convert character array to numeric array.

## 📝 Syntax

- x = str2num(s)
- [x, ok] = str2num(s)

## 📥 Input argument

- s - a character vector or string scalar holding a numeric expression.

## 📤 Output argument

- x - the numeric result, or <b>[]</b> when the text cannot be evaluated to a number.
- ok - a logical: <b>true</b> when the conversion succeeded.

## 📄 Description


<b>x = str2num(s)</b> converts the character array <b>s</b> to a numeric array by evaluating it. 

Because <b>str2num</b> evaluates its input, prefer <b>str2double</b> for simple scalar conversions.

## 💡 Example



```matlab
x = str2num('[1 2 3]')
[y, ok] = str2num('4 5; 6 7')
```


## 🔗 See also

[str2double](../../string/1_create_convert_text/str2double.md), [num2str](../../string/1_create_convert_text/num2str.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
