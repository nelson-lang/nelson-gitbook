# gamma

Gamma special function

## Syntax

- R = gamma(M)

## Input argument

- M - a real single or real double matrix.

## Output argument

- R - result of gamma function.

## Description

<p>
            gamma computes the gamma function.
        </p>

<p>The gamma function is defined by the integral:</p>

$$\Gamma(z) = \int_0^{\infty} t^{z-1} e^{-t} \, dt$$

<p>for</p>

$$\text{Re}(z) > 0$$

<p>The gamma function extends the factorial function to real and complex numbers:</p>

$$\Gamma(n) = (n-1)!$$

<p>for positive integers</p>

$$n$$

<p>Key properties include:</p>

$$\Gamma(z+1) = z\Gamma(z)$$
(recurrence relation)

$$\Gamma(1/2) = \sqrt{\pi}$$

## Example

```matlab
R = gamma([-pi:0.1:pi])
```

## See also

[gammaln](../special_functions/gammaln.md), [factorial](../elementary_functions/factorial.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
