# ord2

Generate continuous second-order systems.

## Syntax

- [A, B, C, D] = ord2(wn, z)
- [num, den] = ord2(wn, z)

## Input argument

- wn - natural frequency
- z - damping factor

## Output argument

- A - State matrix: Nx-by-Nx matrix.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- C - State-to-output matrix: Ny-by-Nx matrix.
- D - Feedthrough matrix: Ny-by-Nu matrix.
- num - polynomial coefficients: a row vector or as a cell array of row vectors.
- den - polynomial coefficients: a row vector or as a cell array of row vectors.

## Description

<p>
            ord2 offers a convenient way to obtain either the state-space representation or the transfer function of a second-order system based on its natural frequency and damping factor.</p>

## Example

```matlab
wn = 5;
z = 0.7;
[A, B, C, D] = ord2(wn, z);
sys1 = ss(A, B, C, D)

[num, den] = ord2(wn, z);
sys2 = tf(num, den)

```

## See also

[ss](../control_system/ss.md), [tf](../control_system/tf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
