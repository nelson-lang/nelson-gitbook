

# fftn

N-Dimensions fast Fourier transform.

## Syntax

- Y = fftn(X)
- Y = fftn(X, sz)

## Input argument

 - X - a vector, matrix or N-D array (double, single, integer, logical).
 - sz - a multidimensional array

## Output argument

 - Y - a vector, matrix, N-D array: frequency domain representation.

## Description


  <p><b>Y = fftn(X, sz)</b> pads <b>X</b> with zeros, or truncates <b>X</b>, to create a multidimensional array of size <b>sz</b> before performing the transform.</p>
  <p>The size of the result <b>Y</b> is <b>sz</b>.</p>
  <p><b>Y = fftn(X)</b> performs the N-dimensional fast Fourier transform.</p>
  <p>The result <b>Y</b> is the same size as <b>X</b>.</p>


## Example

```Nelson
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
```

## See also

[ifftn](ifftn.md), [fft](fft.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



