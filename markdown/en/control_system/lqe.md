# lqe

Kalman estimator design for continuous-time systems.

## 📝 Syntax

- [L, P, E] = lqe(A, G, C, Q, R, N)
- [L, P, E] = lqe(A, G, C, Q, R)

## 📥 Input argument

- A - State matrix: n x n matrix.
- G - Defines a matrix linking the process noise to the states.
- C - The output matrix, with dimensions (q x n), where q is the number of outputs.
- Q - State-cost weighted matrix
- R - Input-cost weighted matrix
- N - Optional cross term matrix: 0 by default.

## 📤 Output argument

- L - Kalman gain matrix.
- P - Solution of the Discrete Algebraic Riccati Equation.
- E - Closed-loop pole locations

## 📄 Description

The function computes the optimal steady-state feedback gain matrix, denoted as<b>L</b>, minimizing a quadratic cost function for a linear discrete state-space system model.

## 💡 Example

```matlab
c = 1;
m = 1;
k = 1;
A = [0, 2; -k/m, -c/m];
B = [0; 2/m];
G = [2 0 ; 0 2];
C = [2 0];
Q = [0.02 0; 0 0.02];
R = 0.02;
[l, p, e] = lqe(A, G, C, Q, R)
```

## 🔗 See also

[lqr](../control_system/lqr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
