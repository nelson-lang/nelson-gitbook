# rmfield

Remove fields from structure.

## 📝 Syntax

- s = rmfield(st, field)

## 📥 Input argument

- st - a structure.
- field - a string, cell of strings, or char.

## 📤 Output argument

- s - a structure without field.

## 📄 Description

<b>s = rmfield(st, field)</b> removes the specified field from structure array.

## 💡 Example

```matlab
example.a = 1
example.b = 'nelson'
example.c = []
rmfield(example, 'b')
```

## 🔗 See also

[struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
