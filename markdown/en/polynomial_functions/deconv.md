# deconv

Deconvolution and polynomial division.

## Syntax

- [q, r] = deconv(b, a)

## Input argument

- a - row or column vectors
- b - row or column vectors

## Output argument

- q - quotient: row or column vector
- r - remainder: row or column vector

## Description

<p>
            [q, r] = deconv(b, a) performs deconvolution on vector b by vector a using long division.</p>

<p>It returns the quotient q and remainder r such that b = conv(a, q) + r.</p>

<p>In the context of polynomial coefficients, deconvolving vectors b and a is akin to dividing the polynomial represented by b by the polynomial represented by a.</p>

## Example

```matlab

b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
```

## See also

[conv](../data_analysis/conv.md), [poly](../polynomial_functions/poly.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

## Author

Allan CORNET
