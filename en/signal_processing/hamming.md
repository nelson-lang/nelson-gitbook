# hamming

Hamming window.

## Syntax

- c = hamming(m)
- c = hamming(m, opt)

## Input argument

- m - positive integer: window length
- opt - string: 'symetric' (default) or 'periodic'

## Output argument

- c - column vector

## Description

  <p><b>c = hamming(m)</b> computes coefficients of a Hamming window of length <b>m</b>.</p>

## Example

```matlab
c = hamming(8)
c = hamming(8, 'periodic')
```

Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

## See also

[hann](hann.md), [blackman](blackman.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
