# atan2d

Four-quadrant inverse tangent in degrees.

## Syntax

- d = atan2d(y, x)

## Input argument

- y - a numeric value
- x - a numeric value

## Output argument

- d - a numeric value

## Description

<p>
            d = atan2d(y, x) returns the four-quadrant inverse tangent (tan-1) of y and x, which must be real.</p>

## Example

```matlab
x = [1 0 -1 0];
y = [0 1 0 -1];
d = atan2d(y, x)
```

## See also

[tand](../trigonometric/tand.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
