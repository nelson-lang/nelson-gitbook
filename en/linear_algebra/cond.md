# cond

Condition number for inversion.

## Syntax

- c = rcond(A, p)

## Input argument

- A - a numeric value: square or rectangular (double or single)
- p - norm type: Inf, 'fro', 1, 2 (default)

## Output argument

- c - a numeric value: a scalar.

## Description

  <p><b>c = cond(A)</b> returns the 2-norm condition number for inversion.</p>
  <p><b>c = cond(A, p)</b> returns the p-norm condition number, where p can be 1, 2, Inf, or 'fro'.</p>

## Example

```matlab
X = rand(10, 10);
r = cond(X)
```

## See also

[rcond](rcond.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
