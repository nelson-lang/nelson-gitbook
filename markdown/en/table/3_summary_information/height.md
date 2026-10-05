# height

Number of table rows

## 📝 Syntax

- H = height(T)

## 📥 Input argument

- T - Input array (table or other).

## 📤 Output argument

- H - a integer value: Number of table rows in Table or size(T, 1).

## 📄 Description


<b>H = height(T)</b> returns the number of rows in the table <b>T</b>. 

The function <b>height(T)</b> is equivalent to <b>size(T, 1)</b>, which also provides the number of rows in the table.

## 💡 Example



```matlab
T = table();
height(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
height(T)

```


## 🔗 See also

[width](../../table/3_summary_information/width.md), [size](../../elementary_functions/7_indexing_dimensions/size.md), [table](../../table/1_create_convert_tables/table.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
