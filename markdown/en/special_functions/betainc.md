# betainc

Incomplete beta function

## Syntax

- R = betainc(X, Z, W)
- R = betainc(X, Z, W, tail)

## Input argument

- X - a real single or real double matrix. It must be in the closed interval [0, 1].
- Z - a real single or real double matrix. It must be nonnegative.
- W - a real single or real double matrix. It must be nonnegative.
- tail - a string 'upper' or 'lower' (default).

## Output argument

- R - result of betainc function.

## Description

<p>
            betainc computes the incomplete beta function (regularized).
        </p>

<p>The incomplete beta function is defined as:</p>

$$I_x(a,b) = \frac{B(x; a,b)}{B(a,b)} = \frac{1}{B(a,b)} \int_0^x t^{a-1} (1-t)^{b-1} \, dt$$

<p>where</p>

$$B(a,b) = \int_0^1 t^{a-1} (1-t)^{b-1} \, dt$$

<p>is the complete beta function, and:</p>

$$B(a,b) = \frac{\Gamma(a)\Gamma(b)}{\Gamma(a+b)}$$

<p>The function is normalized so that</p>

$$I_1(a,b) = 1$$
.

<p>All arrays must be the same size or any of them can be scalar.</p>

## Example

```matlab
R = betainc(0.5, 1:10, 3)
```

## See also

[gamma](../special_functions/gamma.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
