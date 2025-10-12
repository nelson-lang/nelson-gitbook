# isscalar

Check if the input is a scalar

## Syntax

- TF = iscalar(A)

## Input argument

- A - input array as a scalar, vector, matrix, or multidimensional array.

## Output argument

- TF - a logical: true if it is a scalar.

## Description

<p>
            TF = isscalar(A) returns logical true if A is a scalar, meaning it is a 1-by-1 two-dimensional array.</p>

<p>Otherwise, it returns logical false.</p>

## Example

```matlab
x = [1+i, -i ; i, 2i];
isscalar(x)
isscalar(1)
```

## See also

[isvector](../elementary_functions/isvector.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
