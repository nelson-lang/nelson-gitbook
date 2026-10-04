# ne

Inequality, ~= operator

## 📝 Syntax

- C = ne(A, B)
- C = A ~= B

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of A ~= B

## 📄 Description

<b>C = ne(A, B)</b> performs inequality operation: A ~= B variables.

<b>ne</b> compares both real and imaginary parts of numeric arrays.

When inputs are sparse numeric or logical arrays, the result is a sparse logical array. Sparse <b>single</b> and single-complex operands are supported.

## 💡 Example

```matlab
ne(3, 4)
3 ~= 4
```

## 🔗 See also

[le](../operators/le.md), [ge](../operators/ge.md), [eq](../operators/eq.md).

## 🕔 History

| Version | 📄 Description                                       |
| ------- | ---------------------------------------------------- |
| 1.0.0   | initial version                                      |
| 2.0.0   | sparse single and single-complex operands supported. |

<!--
## 👤 Author

Allan CORNET
-->
