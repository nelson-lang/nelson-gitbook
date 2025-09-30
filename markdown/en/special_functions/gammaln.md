# gammaln

Logarithm of gamma function

## Syntax

- R = gammaln(M)

## Input argument

- M - a real single or real double matrix.

## Output argument

- R - result of gammaln function.

## Description

<p>The function <b>gammaln(A)</b> computes the natural logarithm of the gamma function for a given input <b>A</b>, expressed as <b>gammaln(A) = log(gamma(A))</b>.</p>
<p>It's important to note that A must be a nonnegative real number.</p>
<p>Using gammaln helps prevent potential underflow and overflow issues that might arise if directly computing <b>log(gamma(A))</b>.</p>

## Example

```matlab
R = gammaln([0:0.1:pi])
```

## See also

[gamma](../special_functions/gamma.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
