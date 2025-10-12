# lqry

Form linear-quadratic (LQ) state-feedback regulator with output weighting.

## Syntax

- [K, S, e] = lqry(sys, Q, R, N)

## Input argument

- sys - LTI model
- Q - State-cost weighted matrix
- R - Input-cost weighted matrix
- N - Optional cross term matrix: 0 by default.

## Output argument

- K - Optimal gain: row vector.
- S - Solution of the Algebraic Riccati Equation.
- e - Poles of the closed-loop system: column vector.

## Description

<p>The function lqry computes and returns the optimal gain matrix (K), the Riccati solution (S), and the closed-loop eigenvalues (e) for a given state-space model (sys) with specified weights (Q, R, N).</p>

<p>The plant data is defined by the matrices A, B, C, and D, representing continuous- or discrete-time dynamics.</p>

<p>If the parameter N is not provided, it defaults to N=0.</p>

<p>The closed-loop eigenvalues are determined by the eigenvalues of the matrix A - B * K.</p>

## Example

```matlab
A = [0.6, 0.25; 0, 0.9];
B = [0; 10];
C = [11, 0];
D = 0;
Q = 2;
R = 1;
[K, S, e] = lqry(A, B, C, D, Q, R)
```

## See also

[lqr](../control_system/lqr.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
