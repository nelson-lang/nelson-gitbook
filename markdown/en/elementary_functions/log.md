# log

Natural logarithm.

## Syntax

- R = log(M)

## Input argument

- M - a variable

## Output argument

- R - result of log: Natural logarithm.

## Description

<p>
            log computes the natural logarithm.
        </p>

<p>For real positive numbers:</p>

$$\ln(x)$$

<p>For complex numbers z:</p>

$$\ln(z) = \ln|z| + i\arg(z)$$

<p>where</p>

$$|z|$$

<p>is the modulus and</p>

$$\arg(z)$$

<p>is the argument of z.</p>

## Example

```matlab
x = [1+i,-i;i,2i];
r = log(x)
```

## See also

[exp](../elementary_functions/exp.md), [abs](../elementary_functions/abs.md), [angle](../elementary_functions/angle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
