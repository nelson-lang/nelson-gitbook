# blackman

Blackman window.

## Syntax

- c = blackman(m)
- c = blackman(m, opt)

## Input argument

- m - positive integer: window length
- opt - string: 'symetric' (default) or 'periodic'

## Output argument

- c - column vector

## Description

  <p><b>c = blackman(m)</b> computes coefficients of a Blackman window of length <b>m</b>.</p>

## Example

```matlab
c = blackman(8)
c = blackman(8, 'periodic')
```

Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

## See also

[hamming](hamming.md), [hann](hann.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
