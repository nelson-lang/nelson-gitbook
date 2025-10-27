# cell2struct

Creates a struct from a cell.

## 📝 Syntax

- st = cell2struct(ce, fields)
- st = cell2struct(ce, fields, dim)

## 📥 Input argument

- ce - a cell.
- fields - a cell of strings.
- dim - dimension along cell is converted.

## 📤 Output argument

- st - a struct array.

## 📄 Description

<b>st = cell2struct(ce, fields)</b> creates a struct from a cell.

## 💡 Example

```matlab
ce = {85, 50, 68; 'Pierre', 'Anna', 'Roberto'}
fields = {'Height','Name'}
A = cell2struct (ce, fields, 1)
```

## 🔗 See also

[cell](../data_structures/cell.md), [struct](../data_structures/struct.md), [struct2cell](../data_structures/struct2cell.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
