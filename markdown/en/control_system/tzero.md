# tzero

Invariant zeros of linear system.

## Syntax

- z = tzero(sys)
- z = tzero(A, B, C, D)
- z = tzero(A, B, C, D, E)
- [z, nrank] = tzero(sys)
- [z, nrank] = tzero(A, B, C, D)
- [z, nrank] = tzero(A, B, C, D, E)

## Input argument

- sys - a LTI model.
- A - State matrix: Nx-by-Nx matrix.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- C - State-to-output matrix: Ny-by-Nx matrix.
- D - Feedthrough matrix: Ny-by-Nu matrix.
- E - Nx-by-Nx matrix.

## Output argument

- Z - Invariant zeros: column vector.
- nrank - Normal rank: positive integer.

## Description

  <p><b>tzero</b> function is employed to extract the invariant zeros of a Multiple Input, Multiple Output (MIMO) dynamic system described by the system model <b>sys</b>.</p>
  <p>In cases where <b>sys</b> is a minimal realization, these invariant zeros coincide with the transmission zeros of the system.</p>

## Example

```matlab
A = [1 2; 3 4];
B = [1; 0];
C = [1 0];
D = 0;
sys = ss(A, B, C, D);
z = tzero(sys)
[z, nrank] = tzero(sys)
```

## See also

[append](append.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
