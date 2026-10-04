# all

all of the elements of a matrix satisfy some condition.

## 📝 Syntax

- R = all(M)
- R = all(M, dim)
- R = all(M, 'all')

## 📥 Input argument

- M - a matrix.
- dim - a integer value: dimension along it works.
- 'all' - tests over all elements of M.

## 📤 Output argument

- R - a logical matrix.

## 📄 Description

<b>all</b> returns true if all of the elements of a matrix satisfy some condition.

Sparse logical, double, single, complex double, and complex single inputs are supported. Sparse numeric zeros are treated as false and nonzero real or complex entries are treated as true.

## 💡 Examples

```matlab
all([33, 22; 11, 0])
all([33, 22; 11, 0], 2)
```

```matlab
S = sparse(single([1 0; 2 + 1i 3]));
all(S)
all(S, 'all')
```

## 🔗 See also

[any](../operators/any.md).

## 🕔 History

| Version | 📄 Description                                 |
| ------- | ---------------------------------------------- |
| 1.0.0   | initial version                                |
| 2.0.0   | added sparse single and complex single support |

<!--
## 👤 Author

Allan CORNET
-->
