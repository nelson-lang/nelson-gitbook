

# size

Size of an object.

## Syntax

- s = size(X)
- sdim = size(X, dim)
- [r, c] = size(X)
- [s1, ... , sn] = size(X)

## Input argument

 - X - a variable
 - dim - a variable: a positive integer to get the dimth dimension.

## Output argument

 - s - a row vector whose elements contain the length of the corresponding dimension of X.
 - sdim - the length of dimension dim.
 - [r, c] - number of rows and columns.
 - [s1, ... , sn] - numbers with integer values.

## Description


  <p/>


## Examples

```matlab
X = rand(3, 4, 5, 6);
size(X)
size(X, 3)
[r, c] =size(X)
[s1, s2, s3, s4] = size(X)
```
```matlab
size(cell(4,3))
```

## See also

[length](length.md), [ndims](ndims.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



