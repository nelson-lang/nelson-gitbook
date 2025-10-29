# table2struct

Convert table to structure array

## 📝 Syntax

- S = table2struct(T)
- S = table2struct(T, "ToScalar", true)

## 📥 Input argument

- T - a table object

## 📤 Output argument

- S - Structure.

## 📄 Description

<b>S = table2struct(T)</b> converts the table <b>T</b> into a structure array <b>S</b>, where each variable in <b>T</b> is represented as a field in <b>S</b>.

If <b>T</b> is an m-by-n table, <b>S</b> will be an m-by-1 structure array with n fields.

the output <b>S</b> will not contain any table properties from <b>T.Properties</b>.

<b>S = table2struct(T, "ToScalar", true)</b> converts the table <b>T</b> into a scalar structure <b>S</b>, where each variable in <b>T</b> becomes a field in <b>S</b>.

If <b>T</b> is an m-by-n table, <b>S</b> will contain n fields, and each field will have m rows.

## 💡 Example

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
S1 = table2struct(T)
S1 = table2struct(T, "ToScalar", true)
```

## 🔗 See also

[struct2table](../table/struct2table.md), [table](../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.8.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
