# compreal

Companion realization of transfer functions.

## 📝 Syntax

- [A, B, C, D, E] = compreal(numerator, denominator)

## 📥 Input argument

- numerator - a vector or matrix
- denominator - a vector

## 📤 Output argument

- A (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- B (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- C (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- D (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.
- E (n x n) - matrix.

## 📄 Description

<b>[A, B, C, D, E] = compreal(numerator, denominator)</b> calculates a state-space realization represented by matrices A, B, C, D, and E.

The <b>E</b> matrix is an empty matrix (identity matrix) when there are at least as many poles as zeros.

However, if there are more zeros than poles, the <b>E</b> matrix becomes singular.

## 💡 Example

```matlab
numerator = [0 10 10];
denominator = [1 1 10];
[A, B, C, D, E] = compreal(numerator, denominator)
```

## 🔗 See also

[tf](../control_system/tf.md), [ss](../control_system/ss.md), [balance](../linear_algebra/balance.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
