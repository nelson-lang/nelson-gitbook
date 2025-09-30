# isct

Checks if dynamic system model is in continuous time.

## Syntax

- res = isct(sys)

## Input argument

- sys - a lti model.

## Output argument

- res - a logical: true if dynamic system model is in continuous time.

## Description

<p>Checks if dynamic system model is in continuous time.</p>

## Example

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys1 = ss(A, B, C, D);
isct(sys1)
sys2 = ss(A, B, C, D, 0.2);
isct(sys2)
```

## See also

[isdt](../control_system/isdt.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
