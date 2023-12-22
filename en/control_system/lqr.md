# lqr

Linear-Quadratic Regulator (LQR) design.

## Syntax

- [K, S, P] = lqr(sys, Q, R, N)
- [K, S, P] = lqr(A, B, Q, R, N)

## Input argument

- sys - LTI model
- Q - State-cost weighted matrix
- R - Input-cost weighted matrix
- N - Optional cross term matrix: 0 by default.
- A - State matrix: n x n matrix.
- B - Input-to-state matrix: n x m matrix.

## Output argument

- K - Optimal gain: row vector.
- S - Solution of the Algebraic Riccati Equation.
- p - Poles of the closed-loop system: column vector.

## Description

  <p>In the context of continuous-time state-space matrices <b>A</b> and <b>B</b>, the command <b>[K, S, P] = lqr(A, B, Q, R, N)</b> computes the optimal gain matrix <b>K</b>, the solution <b>S</b> to the associated algebraic Riccati equation, and the closed-loop poles <b>P</b>.</p>
  <p>This syntax is applicable exclusively to continuous-time models.</p>
  <p>When applied to a continuous-time or discrete-time state-space model represented by <b>sys</b>, the command <b>[K, S, P] = lqr(sys, Q, R, N)</b> computes the optimal gain matrix <b>K</b>, the solution <b>S</b> to the associated algebraic Riccati equation, and the closed-loop poles <b>P</b>.</p>
  <p>The weight matrices <b>Q</b> and <b>R</b> govern the importance of states and inputs, and the cross term matrix <b>N</b> is zero by default when not specified.</p>

## Example

```matlab
A = [-0.313 56.7 0; -0.0139 -0.426 0; 0 56.7 0];
B = [0.232; 0.0203; 0];
C = [0 0 1];
D = 1;
Ts = 1.2;
sys1 = ss(A, B, C, D, Ts);
sys2 = ss(A, B, C, D);

P = 2;
Q = P * C' * C;
R = 2;
[K1, S1, e1] = lqr(sys1, Q, R)
[K2, S2, e2] = lqr(sys2, Q, R)
```

## See also

[care](care.md), [dare](dare.md), [lqe](lqe.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
