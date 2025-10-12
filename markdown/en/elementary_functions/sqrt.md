# sqrt

Square root.

## Syntax

- R = sqrt(M)

## Input argument

- M - a variable

## Output argument

- R - result of sqrt: square root.

## Description

<p>
            sqrt computes the square root.
        </p>

<p>For real positive numbers:</p>

$$\sqrt{x}$$

<p>For complex numbers z = x + iy:</p>

$$\sqrt{z} = \sqrt{r} e^{i\phi/2}$$

<p>where</p>

$$r = |z| = \sqrt{x^2 + y^2}$$

<p>and</p>

$$\phi = \arg(z) = \text{atan2}(y, x)$$

## Example

```matlab
x = -3:3;
r = sqrt(x)
```

## See also

[log](../elementary_functions/log.md), [abs](../elementary_functions/abs.md), [angle](../elementary_functions/angle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
