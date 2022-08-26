# sinpi

Computes sin(X \* pi) accurately.

## Syntax

- res = sinpi(x)

## Input argument

- x - a numeric value

## Output argument

- res - a numeric value

## Description

  <p><b>res = sinpi(x)</b> computes <b>sin(x * pi)</b> accurately.</p>
  <p>For odd integers, <b>sinpi(x / 2)</b> is +1 or -1.</p>
  <p>For integers, <b>sinpi(x)</b> is exactly zero.</p>

## Example

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = sin(x * pi)
res = sinpi(x)
```

## See also

[sin](sin.md), [cospi](cospi.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
