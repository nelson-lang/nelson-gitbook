# isbanded

Determine if matrix is within specific bandwidth.

## Syntax

- tf = isbanded(A, lower, upper)

## Input argument

- A - Input matrix
- lower, upper - lower bandwidth,

## Output argument

- tf - logical

## Description

  <p><b>tf = isbanded(A, lower, upper)</b> returns <b>true</b> if matrix <b>A</b> is within the specified lower bandwidth, <b>lower</b>, and upper bandwidth, <b>upper</b>.</p>

## Example

```matlab
M = [1 0 0 0 0; 2 1 0 0 0; 3 2 1 0 0]
TF = isbanded(M, 2, 0)
TF = isbanded(M, 2, 1)
```

## See also

[bandwidth](bandwidth.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
