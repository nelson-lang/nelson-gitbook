# isbanded

Determine if matrix is within specific bandwidth.

## Syntax

- tf = isbanded(A, lower, upper)

## Input argument

- A - Input matrix
- lower, upper - lower bandwidth: lower, and upper bandwidth: upper, of matrix A.

## Output argument

- tf - logical

## Description

<p>
            tf = isbanded(A, lower, upper) returns true if matrix A is within the specified lower bandwidth, lower, and upper bandwidth, upper.</p>

## Example

```matlab
M = [1 0 0 0 0; 2 1 0 0 0; 3 2 1 0 0]
TF = isbanded(M, 2, 0)
TF = isbanded(M, 2, 1)

```

## See also

[bandwidth](../linear_algebra/bandwidth.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
