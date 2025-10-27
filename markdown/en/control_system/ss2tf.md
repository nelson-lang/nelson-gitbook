# ss2tf

Convert state-space representation to transfer function.

## 📝 Syntax

- [b, a] = ss2tf(A, B, C, D)
- [b, a] = ss2tf(A, B, C, D, ni)

## 📥 Input argument

- A (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- B (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- C (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- D (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.
- ni - Input index:integer scalar or 1 (default).

## 📤 Output argument

- b - Transfer function numerator coefficients: vector or matrix.
- a - Transfer function denominator coefficients: vector.

## 📄 Description

<b>[b, a] = ss2tf(A, B, C, D)</b> transforms a state-space representation of a system into an equivalent transfer function.

The function <b>ss2tf</b> returns the Laplace-transform transfer function for continuous-time systems and the Z-transform transfer function for discrete-time systems.

<b>[b, a] = ss2tf(A, B, C, D, ni)</b> computes the transfer function resulting from exciting the nith input of a system with multiple inputs using a unit impulse.

## 💡 Example

```matlab
Fs = 16;
dt = 1/Fs;
Ac = [0 1 0 0; -2 0 1 0; 0 0 0 1; 1 0 -2 0];
A = expm(Ac*dt);
Bc = [0 0; 1 0; 0 0; 0 1];
B = Ac\(A-eye(4))*Bc;
C = [-2 0 1 0; 1 0 -2 0];
D = eye(2);
[b, a] = ss2tf(A, B, C, D, 2)

```

## 🔗 See also

[tf2ss](../control_system/tf2ss.md), [ss](../control_system/ss.md), [tf](../control_system/tf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
