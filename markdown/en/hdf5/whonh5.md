# whonh5

List variables in an valid .nh5 file.

## 📝 Syntax

- whonh5(filename)
- ce = whonh5(filename)
- whonh5(filename, var1, ..., varN)
- ce = whonh5(filename, var1, ..., varN)

## 📥 Input argument

- filename - a string: .nh5 filename.
- var1, ..., varN - string: Names of variables to inspect.

## 📤 Output argument

- ce - cell of strings with variables names.

## 📄 Description

<b>whonh5</b> lists variables in an valid .nh5 file.

## 💡 Example

```matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whonh5.nh5'], 'A', 'B', 'C', 'D')
whonh5([tempdir(), 'example_whonh5.nh5'])
ce = whonh5([tempdir(), 'example_whonh5.nh5'])
```

## 🔗 See also

[whomat](../matio/whomat.md), [who](../memory_manager/who.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
