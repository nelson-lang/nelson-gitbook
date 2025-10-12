# ctrbf

Compute controllability staircase form.

## Syntax

- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C, tol)

## Input argument

- A - State matrix: Nx-by-Nx matrix
- B - Input-to-state matrix: Nx-by-Nu matrix
- C - Output-to-state matrix: Ny-by-Nx matrix
- tol - scalar real (tolerance).

## Output argument

- Abar - Observability staircase state matrix.
- Bbar - Observability staircase input matrix.
- Cbar - Observability staircase output matrix.
- T - Similarity transform matrix.
- k - Vector: number of observable states.

## Description

<p>
            ctrbf(A, B, C) decomposes the given state-space system, defined by matrices A, B, and C, into the controllability staircase form.</p>

<p>This results in transformed matrices Abar, Bbar, and Cbar, along with a similarity transformation matrix T and a vector k.</p>

<p>The length of vector k is equal to the order of the system represented by A, and each entry in k denotes the number of controllable states factored out at each step of the transformation matrix computation.</p>

<p>The non-zero elements in k indicate the number of iterations required for T calculation, and the sum of k corresponds to the number of states in Ac, the controllable portion of Abar.</p>

## Example

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
```

## See also

[ctrb](../control_system/ctrb.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
