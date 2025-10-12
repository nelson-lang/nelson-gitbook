# gammaln

Logarithm of gamma function

## Syntax

- R = gammaln(M)

## Input argument

- M - a real single or real double matrix.

## Output argument

- R - result of gammaln function.

## Description

<p>The function gammaln(A) computes the natural logarithm of the gamma function for a given input A, expressed as gammaln(A) = log(gamma(A)).</p>

<p>It's important to note that A must be a nonnegative real number.</p>

<p>Using gammaln helps prevent potential underflow and overflow issues that might arise if directly computing log(gamma(A)).</p>

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
