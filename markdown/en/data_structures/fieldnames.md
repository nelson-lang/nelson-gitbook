# fieldnames

Returns field names of a structure or an handle.

## 📝 Syntax

- names = fieldnames(st)
- names = fieldnames(h)
- names = fieldnames(h, '-full')

## 📥 Input argument

- st - a structure
- h - a handle object

## 📤 Output argument

- names - a cell of strings

## 📄 Description

<b>names = fieldnames(st)</b> returns a cell of strings with the names of the fields in the input structure.

<b>names = fieldnames(h)</b> returns a cell of strings with the names of the properties in the handle (without hidden).

<b>names = fieldnames(h, '-full')</b> returns a cell of strings with the names of the all properties in the handle.

## 💡 Example

```matlab
fieldnames(dir())
```

## 🔗 See also

[getfield](../data_structures/getfield.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
