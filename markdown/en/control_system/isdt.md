# isdt

Checks if dynamic system model is in discret time.

## Syntax

- res = isdt(sys)

## Input argument

- sys - a lti model.

## Output argument

- res - a logical: true if dynamic system model is in discret time.

## Description

<p>Checks if dynamic system model is in discret time.</p>

## Example

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys1 = ss(A, B, C, D);
isdt(sys1)
sys2 = ss(A, B, C, D, 0.2);
isdt(sys2)
```

## See also

[isct](../control_system/isct.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
