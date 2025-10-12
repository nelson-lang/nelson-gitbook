# cospi

Computes cos(X \* pi) accurately.

## Syntax

- res = cospi(x)

## Input argument

- x - a numeric value

## Output argument

- res - a numeric value

## Description

<p>
            res = cospi(x) computes cos(x * pi) accurately.</p>

<p>For integers, cospi(x) is +1 or -1.</p>

<p>For odd integers, cospi(x / 2) is exactly zero.</p>

## Example

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
```

## See also

[cos](../trigonometric_functions/cos.md), [sinpi](../trigonometric_functions/sinpi.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
