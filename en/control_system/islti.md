# islti

Checks if variable is an linear model tf, ss or zpk.

## Syntax

- res = islti(sys)

## Input argument

- A - variable.

## Output argument

- res - a logical: true if it is an linear model.

## Description

  <p>Checks if variable is an linear model tf, ss or zpk.</p>

## Example

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D);
islti(sys)
islti(A)
```

## See also

[isa](../types/isa.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
