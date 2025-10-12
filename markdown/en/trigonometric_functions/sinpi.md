# sinpi

Computes sin(X \* pi) accurately.

## Syntax

- res = sinpi(x)

## Input argument

- x - a numeric value

## Output argument

- res - a numeric value

## Description

<p>
            res = sinpi(x) computes sin(x * pi) accurately.</p>

<p>For odd integers, sinpi(x / 2) is +1 or -1.</p>

<p>For integers, sinpi(x) is exactly zero.</p>

## Example

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = sin(x * pi)
res = sinpi(x)
```

## See also

[sin](../trigonometric_functions/sin.md), [cospi](../trigonometric_functions/cospi.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
