# obsvf

Compute observability staircase form.

## Syntax

- [Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = obsvf(A, B, C, tol)

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
            obsvf(A, B, C) decomposes the given state-space system, characterized by matrices A, B, and C, into the observability staircase form, resulting in transformed matrices Abar, Bbar, and Cbar.</p>

<p>It also provides a similarity transformation matrix T and a vector k.</p>

<p>The length of vector k corresponds to the number of states in A, and each entry in k signifies the number of observable states factored out at each step of the transformation matrix computation.</p>

<p>The non-zero elements in k indicate the number of iterations needed for T calculation, and the sum of k represents the number of states in Ao, the observable portion of Abar.</p>

## Example

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
```

## See also

[obsv](../control_system/obsv.md), [ctrbf](../control_system/ctrbf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
