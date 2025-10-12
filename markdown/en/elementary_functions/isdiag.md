# istriu

Checks if matrix is diagonal.

## Syntax

- tf = isdiag(M)

## Input argument

- M - a numeric array

## Output argument

- tf - logical: result of 'isdiag'.

## Description

<p>
            isdiag returns an scalar logical if entry is diag.</p>

## Example

```matlab
A = eye(3, 3);
R = isdiag(A)
R = isdiag(A(:,1))
```

## See also

[istriu](../elementary_functions/istriu.md), [istril](../elementary_functions/istril.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
