# struct2array

Concatenate structure field values into an array.

## 📝 Syntax

- a = struct2array(s)

## 📥 Input argument

- s - a structure whose field values can be concatenated.

## 📤 Output argument

- a - the horizontal concatenation of the field values.

## 📄 Description


<b>a = struct2array(s)</b> returns the horizontal concatenation of the field values of <b>s</b>. The field values must have compatible sizes and types.

## 💡 Example



```matlab
s.a = 1;
s.b = [2 3];
struct2array(s)
```


## 🔗 See also

[struct2cell](../data_structures/struct2cell.md), [cell2mat](../data_structures/cell2mat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
