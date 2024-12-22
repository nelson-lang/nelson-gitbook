# sqrt

Square root.

## Syntax

- R = sqrt(M)

## Input argument

- M - a variable

## Output argument

- R - result of sqrt: square root.

## Description

  <p><b>sqrt</b> computes the square root.</p>
  <p>If input argument is a complex number or negative, <b>sqrt(z)</b> computes: sqrt(r) * (cos(phi/2) + sin(phi/2) * i) with</p>
  <p>r = sqrt((real(z) * real(z)) + (imag(z) * imag(z))) and phi = atan2(imag(z), real(z))</p>

## Example

```matlab
x = -3:3;
r = sqrt(x)
```

## See also

[log](log.md), [abs](abs.md), [angle](angle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
