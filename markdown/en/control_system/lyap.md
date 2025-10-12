# lyap

Continuous Lyapunov equation solution.

## Syntax

- X = lyap(A, Q)

## Input argument

- A - real matrix
- Q - real matrix

## Output argument

- X - matrix: solution of the Lyapunov equation.

## Description

<p>
            X = lyap(A, Q) resolves the Lyapunov equation.</p>

## Example

```matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = lyap (A, Q)
```

## See also

[dlyap](../control_system/dlyap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
