# cospi

Computes cos(X \* pi) accurately.

## Syntax

- res = cospi(x)

## Input argument

- x - a numeric value

## Output argument

- res - a numeric value

## Description

  <p><b>res = cospi(x)</b> computes <b>cos(x * pi)</b> accurately.</p>
  <p>For integers, <b>cospi(x)</b> is +1 or -1.</p>
  <p>For odd integers, <b>cospi(x / 2)</b> is exactly zero.</p>

## Example

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
```

## See also

[cos](cos.md), [sinpi](sinpi.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
