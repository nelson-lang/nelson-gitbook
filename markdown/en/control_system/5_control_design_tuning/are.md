# are

Algebraic Riccati equation solution.

## 📝 Syntax

- X = are(A, B, C)

## 📥 Input argument

- A - square state matrix.
- B - symmetric nonnegative matrix in the quadratic term.
- C - symmetric state-weighting matrix.

## 📤 Output argument

- X - stabilizing solution.

## 📄 Description

<b>are</b> solves <b>A' \* X + X \* A - X \* B \* X + C = 0</b>.

## 💡 Example

```matlab

A = [-1 0; 0 -2];
B = [1 0; 0 0];
C = eye(2);
X = are(A, B, C)

```

## 🔗 See also

[care](../../control_system/care.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
