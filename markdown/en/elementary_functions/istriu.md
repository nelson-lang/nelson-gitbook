# istriu

Checks if matrix is upper triangular.

## Syntax

- tf = istriu(M)

## Input argument

- M - a numeric array

## Output argument

- tf - logical: result of 'istriu'.

## Description

  <p><b>istriu</b> returns an scalar logical if entry is upper triangular.</p>

## Example

```matlab
A = eye(3, 3);
R = istriu(A)
R = istriu(A(:,1))
```

## See also

[isdiag](isdiag.md), [istril](istril.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
