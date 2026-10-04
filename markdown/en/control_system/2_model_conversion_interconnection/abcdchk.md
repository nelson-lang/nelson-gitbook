# abcdchk

Verifies the dimensional compatibility of matrices A, B, C, and D.

## 📝 Syntax

- [msg, A, B, C, D] = abcdchk(a, b, c, d)

## 📥 Input argument

- a (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- b (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- c (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- d (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.

## 📤 Output argument

- msg - Returns an empty struct if matrix dimensions are consistent. Otherwise it returns the associated error message.
- a (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- b (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- c (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- d (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.

## 📄 Description

<b>abcdchk</b> verify dimensional consistency of the matrices A, B, C, D, E.

It additionally adjusts the dimensions of any empty 0-by-0 matrices to ensure their alignment with the rest.

This is a low-level validation helper used internally by the state-space model construction and conversion functions to check that A, B, C, and D are dimensionally consistent before further processing.

## 💡 Example

```matlab
A = [0 1; -2 -3];
B = [0;  1];
C = [1 0];
D = 0;
[msg, AA, BB, CC, DD] = abcdchk(A, B, C, D)
```

## 🔗 See also

[ss2tf](../../control_system/ss2tf.md), [tf2ss](../../control_system/tf2ss.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
