# dlqr

Linear-quadratic (LQ) state-feedback regulator for discrete-time state-space system.

## Syntax

- [K, S, e] = dlqr(A, B, Q, R, N)
- [K, S, e] = dlqr(A, B, Q, R)

## Input argument

- A - State matrix: n x n matrix.
- B - Input-to-state matrix: n x m matrix.
- Q - State-cost weighted matrix
- R - Input-cost weighted matrix
- N - Optional cross term matrix: 0 by default.

## Output argument

- K - Optimal gain: row vector.
- S - Solution of the Algebraic Riccati Equation.
- e - Poles of the closed-loop system: column vector.

## Description

  <p>The <b>dlqr</b> function is designed to minimize a quadratic cost function associated with a discrete linear time-invariant state-space system model.</p>

## Example

```matlab
A = [0.9, 0.2; 0, 0.8];
B = [0; 2];
Q = [4, 0; 0, 4];
R = 3;
[K, S, e] = dlqr(A, B, Q, R)
```

## See also

[lqr](lqr.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
