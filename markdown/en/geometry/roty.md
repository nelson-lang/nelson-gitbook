# roty

3x3 transformation matrix for rotations around y-axis

## Syntax

- rm = roty(angle)

## Input argument

- angle - angle in degree: scalar value.

## Output argument

- rm - 3x3 transformation matrix: real-valued orthogonal matrix.

## Description

<p>
            roty returns 3x3 transformation matrix for rotations around y-axis.</p>

## Bibliography

Goldstein, H., C. Poole and J. Safko, Classical Mechanics, 3rd Edition, San Francisco: Addison Wesley, 2002, pp. 142–144.

## Example

```matlab
r = roty(90)
```

## See also

[rotx](../geometry/rotx.md), [rotz](../geometry/rotz.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
