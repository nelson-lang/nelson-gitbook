# struct2table

Convert a structure array into a tabular format.

## 📝 Syntax

- T = struct2table(S)

## 📥 Input argument

- S - structure: Array provided as a structure.

## 📤 Output argument

- T - A table object.

## 📄 Description

<b>T = struct2table(S)</b> transforms a structure array into a table, where each field of the input structure is represented as a variable in the resulting table.

If the input is a scalar structure containing 𝑛 fields, each with 𝑚 rows, the output will be an 𝑚×𝑛 table.

If the input is either an 𝑚×1 or a 1×𝑚 structure array with 𝑛 fields, the output will also be an 𝑚×𝑛 table.

## 💡 Examples

```matlab
% Define a structure array
S(1).Name = 'Alice';
S(1).Age = 30;
S(1).Height = 5.5;

S(2).Name = 'Bob';
S(2).Age = 25;
S(2).Height = 6.0;

% Convert the structure array to a table
T = struct2table(S)

```

```matlab
S = struct();
S(1).a = [10 20];
S(2).a = [30 40];
S(1).b = 50;
S(2).b = 60;
T = struct2table(S)
```

```matlab
S = struct();
S.a = [1;2;3]
S.b = [4 5;6 7;8 9]
T = struct2table(S)
```

```matlab
S = struct();
S(1).a = [10 20];
S(2).a = [30 40 50];
S(1).b = 70;
S(2).b = 80;
T = struct2table(S)
```

## 🔗 See also

[table2struct](../table/table2struct.md), [table](../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.8.0   | initial version |

## 👤 Author

Allan CORNET
