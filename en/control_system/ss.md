# ss

State-space model.

## Syntax

- sys = ss(A, B, C, D)
- sys = ss(A, B, C, D, TS)
- sys = ss(D)

## Input argument

- A - State matrix: Nx-by-Nx matrix.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- C - State-to-output matrix: Ny-by-Nx matrix.
- D - Feedthrough matrix: Ny-by-Nu matrix.
- TS - Sample time: scalar.

## Output argument

- sys - Output state space system model.

## Description

  <p>Creates a continuous-time state-space model using matrices A, B, C, and D, allowing for either real or complex-valued matrices.</p>
  <p>This model is represented as <b>sys = ss(A, B, C, D)</b>.</p>

## Example

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D)
```

## See also

[tf](tf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
