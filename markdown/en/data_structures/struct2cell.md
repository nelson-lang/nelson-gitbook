# struct2cell

Creates a cell from a structure.

## 📝 Syntax

- ce = struct2cell(st)

## 📥 Input argument

- st - a structure.

## 📤 Output argument

- ce - a cell.

## 📄 Description

<b>ce = struct2cell(st)</b> returns a new cell from the structure.

## 💡 Example

```matlab
names = {'Pierre', 'Anna', 'Roberto'}
values =  {45, 42, 13}
st = struct ('name', names, 'age', values);
ce = struct2cell(st)
```

## 🔗 See also

[cell](../data_structures/cell.md), [struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
