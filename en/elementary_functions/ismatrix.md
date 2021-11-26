

# ismatrix

determines whether input is matrix or not

## Syntax

- TF = ismatrix(A)

## Input argument

 - A - input array as a scalar, vector, matrix, or multidimensional array.

## Output argument

 - TF - a logical: true if it is a matrix.

## Description


  <p><b>TF = ismatrix(A)</b> returns true if A is a matrix.</p>
  <p>A matrix is a two-dimensional array that has a size of m-by-n, where m and n are nonnegative integers.</p>


## Example

```matlab
x = [1+i,-i;i,2i];
ismatrix(x)
ismatrix(ones(3,1,2))
```

## See also

[isvector](isvector.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



