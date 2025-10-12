# ssdata

Access state-space model data.

## Syntax

- [A, B, C, D] = ssdata(sys)
- [A, B, C, D, Ts] = ssdata(sys)

## Input argument

- sys - LTI model.

## Output argument

- A - State matrix: Nx-by-Nx matrix.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- C - State-to-output matrix: Ny-by-Nx matrix.
- D - Feedthrough matrix: Ny-by-Nu matrix.
- TS - Sample time: scalar.

## Description

<p>The function ssdata(sys) retrieves the matrix data A, B, C, D from the state-space model (LTI array) represented by sys.</p>

<p>If sys is initially in the form of a transfer function or zero-pole-gain model (LTI array), it is automatically converted to the state-space representation before extracting the matrix data.</p>

## Example

```matlab
sysIn = ss([1 0;0 -2], [-1;0], [2 1], 0, 3.2);
[a, b, c, d, Ts] = ssdata(sysIn)
```

## See also

[tf](../control_system/tf.md), [ss](../control_system/ss.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
