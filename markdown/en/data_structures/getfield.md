# getfield

Returns value of a field in a struct.

## 📝 Syntax

- value = getfield(st, field)

## 📥 Input argument

- st - a structure.
- field - a string.

## 📤 Output argument

- value - the value of a field from a structure.

## 📄 Description

<b>value = getfield(st, field)</b> returns the value of the field named <b>field</b> from a structure.

## 💡 Example

```matlab
example.a = 1
example.b = 'nelson'
example.c = []
getfield(example, 'b')
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
