# any

any of the elements of a matrix satisfy some condition.

## 📝 Syntax

- R = any(M)
- R = any(M, dim)
- R = any(M, 'all')

## 📥 Input argument

- M - a matrix.
- dim - a integer value: dimension along it works.
- 'all' - tests over all elements of M.

## 📤 Output argument

- R - a logical matrix.

## 📄 Description

<b>any</b> returns true if any of the elements of a matrix satisfy some condition.

## 💡 Example

```matlab
any([33, 22; 11, 0])
any([33, 22; 11, 0], 2)
```

## 🔗 See also

[all](../logical/all.md).

## 🕔 History

| Version | 📄 Description               |
| ------- | ---------------------------- |
| 1.0.0   | initial version              |
| 1.6.0   | manages input argument 'all' |

<!--
## 👤 Author

anyan CORNET
-->
