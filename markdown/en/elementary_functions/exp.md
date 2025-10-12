# exp

Exponential

## Syntax

- R = exp(M)

## Input argument

- M - a variable

## Output argument

- R - result of exp: exponential.

## Description

<p>
            exp computes the exponential value.</p>

<p>For real numbers:</p>

$$e^x$$

<p>For complex numbers z = x + iy:</p>

$$e^z = e^x(\cos y + i\sin y)$$

## Example

```matlab
x = [1+i,-i;i,2i];
r = exp(x)
```

## See also

[conj](../elementary_functions/conj.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
