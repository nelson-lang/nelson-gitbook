# shortcutor

Short circuit 'OR' operator, ||

## 📝 Syntax

- C = A || B

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of A || B

## 📄 Description

<b>C = A || B</b> performs a logical <b>OR</b> operation, the second operand is evaluated only when the result is not fully determined by the first operand.

## 💡 Example

```matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A || B

```

## 🔗 See also

[or](../operators/or.md), [&&](../operators/shortcutand.md), [xor](../operators/xor.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
