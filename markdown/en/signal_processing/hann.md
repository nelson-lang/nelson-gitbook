# hann

Hann window.

## Syntax

- c = hann(m)
- c = hann(m, opt)

## Input argument

- m - positive integer: window length
- opt - string: 'symetric' (default) or 'periodic'

## Output argument

- c - column vector

## Description

  <p><b>c = hann(m)</b> computes coefficients of a Hanning window of length <b>m</b>.</p>

## Example

```matlab
c = hann(8)
c = hann(8, 'periodic')
```

Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

## See also

[hamming](hamming.md), [blackman](blackman.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
