# bartlett

Bartlett window.

## Syntax

- c = bartlett(m)

## Input argument

- m - positive integer: window length

## Output argument

- c - column vector

## Description

<p>
            c = bartlett(m) an L-point symmetric Bartlett window.</p>

## Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

## Example

```matlab
c = bartlett(8)
```

## See also

[hamming](../signal_processing/hamming.md), [hann](../signal_processing/hann.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
