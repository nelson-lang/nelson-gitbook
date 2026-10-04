# rows2vars

Reorient table rows into variables.

## 📝 Syntax

- T2 = rows2vars(T)
- T2 = rows2vars(T, 'VariableNamesSource', var)

## 📥 Input argument

- T - Input table.

## 📤 Output argument

- T2 - Reoriented table.

## 📄 Description

<b>rows2vars</b> creates table variables from rows of the input table.

## 💡 Example

```matlab
T = table({'r1'; 'r2'}, [10; 20], 'VariableNames', {'Name', 'Value'});
R = rows2vars(T, 'VariableNamesSource', 'Name')
```

## 🔗 See also

[table](../../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
