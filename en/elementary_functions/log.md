# log

Natural logarithm.

## Syntax

- R = log(M)

## Input argument

- M - a variable

## Output argument

- R - result of log: Natural logarithm.

## Description

  <p><b>log</b> computes the natural logarithm.</p>
  <p>If input argument is a complex number or negative, <b>log(z)</b> computes log(abs(z)) + angle(z) * i.</p>

## Example

```matlab
x = [1+i,-i;i,2i];
r = log(x)
```

## See also

[exp](exp.md), [abs](abs.md), [angle](angle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
