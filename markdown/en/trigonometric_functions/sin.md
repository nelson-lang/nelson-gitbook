# sin

Computes the sine in radians for each element of x.

## Syntax

- res = sin(x)

## Input argument

- x - a numeric value

## Output argument

- res - a numeric value

## Description

<p>sin computes the sine in radians for each element of x.</p>

<p>The sine function is defined as:</p>

$$\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$$

<p>For real arguments, it represents the y-coordinate on the unit circle.</p>

## Example

```matlab
A = eye(3, 3);
res = sin(A)
```

## See also

[asin](../trigonometric_functions/asin.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
