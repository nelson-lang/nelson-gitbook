# width

Number of table variables

## 📝 Syntax

- W = width(T)

## 📥 Input argument

- T - Input array (table or other).

## 📤 Output argument

- W - a integer value: Number of Variables in Table or size(T, 2).

## 📄 Description

<b>W = width(T)</b> returns the number of variables in the table T.

The function <b>width(T)</b> is equivalent to <b>size(T, 2)</b>, which also provides the number of columns in the table.

## 💡 Example

```matlab
T = table();
width(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
width(T)

```

## 🔗 See also

[height](../table/height.md), [size](../elementary_functions/size.md), [table](../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.8.0   | initial version |

## 👤 Author

Allan CORNET
