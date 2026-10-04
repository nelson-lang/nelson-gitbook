# floor

Round down

## 📝 Syntax

- C = floor(A)

## 📥 Input argument

- A - a variable

## 📤 Output argument

- C - result of floor.

## 📄 Description

<b>floor</b> returns an integer matrix made of nearest rounded down integers.

Sparse single and sparse single complex inputs are supported. Only stored nonzero entries are rounded and the result keeps the sparse storage and the input precision.

## 💡 Examples

```matlab
floor(pi)
```

Round a sparse single matrix downward.

```matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = floor(S)
```

## 🔗 See also

[round](../../elementary_functions/round.md), [fix](../../elementary_functions/fix.md), [ceil](../../elementary_functions/ceil.md).

## 🕔 History

| Version | 📄 Description                                            |
| ------- | --------------------------------------------------------- |
| 1.0.0   | initial version                                           |
| 2.0.0   | sparse single and sparse single complex inputs supported. |

<!--
## 👤 Author

Allan CORNET
-->
