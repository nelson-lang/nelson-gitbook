# issiso

Checks if dynamic system model is single input and single output.

## Syntax

- res = issiso(sys)

## Input argument

- sys - a lti model.

## Output argument

- res - a logical: true if dynamic system model is single input and single output.

## Description

  <p>Checks if dynamic system model is single input and single output.</p>

## Example

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D);
issiso(sys)

A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
issiso(sys)
```

## See also

[isdt](isdt.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
