# fftshift

Shift the zero-frequency component to the center of the spectrum.

## Syntax

- Y = fftshift(X)
- Y = fftshift(X, DIM)

## Input argument

- X - a vector, matrix or N-D array (double, single, integer).
- DIM - axes over which to shift.

## Output argument

- Y - shifted array.

## Description

<p>
            fftshift(X) shift the zero-frequency component to the center of the spectrum.</p>

## Example

```matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
fftshift(M)
fftshift(M, 1)
```

## See also

[fft](../fftw/ifft.md), [ifftshift](../fftw/ifftshift.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
