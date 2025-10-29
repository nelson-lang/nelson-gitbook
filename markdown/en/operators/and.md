# and

logical 'AND' operator, &

## 📝 Syntax

- C = and(A, B)
- C = A & B

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of A & B

## 📄 Description

<b>C = and(A, B)</b> performs a logical <b>AND</b> operation.

## 💡 Example

```matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A & B
D = and(B, A)
C == D
```

## 🔗 See also

[or](../operators/or.md), [xor](../logical/xor.md), [all](../logical/all.md), [any](../logical/any.md), [not](../operators/not.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
