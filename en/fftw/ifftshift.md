

# ifftshift

inverse of fftshift

## Syntax

- Y = ifftshift(X)
- Y = ifftshift(X, DIM)

## Input argument

 - X - a vector, matrix or N-D array (double, single, integer).
 - DIM - axes over which to shift.

## Output argument

 - Y - shifted array.

## Description


  <p><b>fftshift(X)</b> computes the inverse <b>fftshift</b>.</p>


## Example

```matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
ifftshift(M)
ifftshift(M, 1)
```

## See also

[ifft](ifft.md), [fftshift](fftshift.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



