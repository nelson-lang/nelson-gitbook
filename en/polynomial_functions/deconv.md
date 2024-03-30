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

  <p><b>[q, r] = deconv(b, a)</b> performs deconvolution on vector <b>b</b> by vector <b>a</b> using long division.</p>
  <p>It returns the quotient <b>q</b> and remainder <b>r</b> such that <b>b = conv(a, q) + r</b>.</p>
  <p>In the context of polynomial coefficients, deconvolving vectors <b>b</b> and <b>a</b> is akin to dividing the polynomial represented by <b>b</b> by the polynomial represented by <b>a</b>.</p>

## Example

```matlab
b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
```

## See also

[conv](../data_analysis/conv.md), [poly](poly.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

## Author

Allan CORNET
