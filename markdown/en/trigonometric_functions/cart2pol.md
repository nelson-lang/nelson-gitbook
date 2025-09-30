# cart2pol

Transforms Cartesian coordinates to polar or cylindrical.

## Syntax

- [theta, rho] = cart2pol(x, y)
- [theta, rho, z] = cart2pol(x, y, z)

## Input argument

- x - a numeric value (double or single real): Cartesian coordinates
- y - a numeric value (double or single real): Cartesian coordinates
- z - a numeric value (double or single real): Cartesian coordinates

## Output argument

- theta - a numeric value: Angular coordinate.
- rho - a numeric value: Radial coordinate.
- z - a numeric value: Elevation coordinate.

## Description

<b>cart2pol</b>transforms Cartesian coordinates to polar or cylindrical.

## Examples

```matlab
x = [5 3.5355 0 -10];
y = [0 3.5355 10 0];
[theta, rho] = cart2pol(x, y)
```

```matlab
x = [1 2.1213 0 -5];
y = [0 2.1213 4 0];
z = [7 8 9 10];
[theta, rho, el] = cart2pol(x, y, z)
```

## See also

[pol2cart](../trigonometric_functions/pol2cart.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
