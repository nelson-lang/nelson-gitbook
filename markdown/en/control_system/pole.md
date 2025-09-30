# pole

Poles of dynamic system.

## Syntax

- P = pole(sys)

## Input argument

- sys - a LTI model.

## Output argument

- P - Poles of dynamic system.

## Description

<p>
            <b>P = pole(sys)</b> returns the poles of <b>sys</b>.</p>

## Example

```matlab
A = [-15, -20; 10, 0];
B = [5; 0];
C = [0, 10];
D = 0;
sys = ss(A, B, C, D);
P = pole(sys)
```

## See also

[zero](../control_system/zero.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
