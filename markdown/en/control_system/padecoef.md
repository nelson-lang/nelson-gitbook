# padecoef

Computes the Pade approximation of time delays.

## Syntax

- [numerator, denominator] = padecoef(T, N)
- [numerator, denominator] = padecoef(T)

## Input argument

- T - Time delay: a scalar real positive.
- N - Order of approximation: a scalar real positive (default N = 1).

## Output argument

- numerator - polynomials of order N: rows vector.
- denominator - polynomials of order N: rows vector.

## Description

<p>
            padecoef(T, N) computes the Nth-order Padé Approximation for the continuous-time delay system represented by the exponential term exp(-T*s) and returns it in the form of a transfer function.</p>

## Bibliography

http://en.wikipedia.org/wiki/Pad%C3%A9_approximant and Golub and Van Loan, Matrix Computations, Johns Hopkins University Press (Third edition, page 562).

## Example

```matlab
T = 2; N = 4;
[numerator, denominator] = padecoef(T, N)
```

## See also

[tf](../control_system/tf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
