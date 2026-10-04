# gt

greater than, > operator.

## 📝 Syntax

- C = gt(A, B)
- C = (A > B)

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of A > B

## 📄 Description

<b>C = gt(A, B)</b> returns a logical array with elements set to logical<b>true</b> A is greater than B.

<b>gt</b> compares only the real part of numeric arrays.

When inputs are sparse numeric or logical arrays, the result is a sparse logical array. Sparse <b>single</b> and single-complex operands are supported.

For sparse complex arrays, order comparisons use the magnitude of each value.

## 💡 Examples

```matlab
eye(2,2) > ones(2, 2)
```

```matlab
0 > i
```

```matlab
'Nelson' > 'Noslen'
```

```matlab
'Nelson' > 'l'
```

```matlab
gt(0.8 - 0.6 - 0.2, 0)
```

```matlab
S = sparse(single([1 + 2i 0; 0 3 - 4i]));
T = sparse(single([2 + 0.1i 0; 0 1 + 0.1i]));
R = S > T
```

## 🔗 See also

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [ge](../operators/ge.md), [eq](../operators/eq.md).

## 🕔 History

| Version | 📄 Description                                       |
| ------- | ---------------------------------------------------- |
| 1.0.0   | initial version                                      |
| 2.0.0   | sparse single and single-complex operands supported. |

<!--
## 👤 Author

Allan CORNET
-->
