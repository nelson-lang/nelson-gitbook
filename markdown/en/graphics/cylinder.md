# cylinder

Create cylinder.

## Syntax

- [X, Y, Z] = cylinder()
- [X, Y, Z] = cylinder(r)
- [X, Y, Z] = cylinder(r, n)
- cylinder()
- cylinder(r)
- cylinder(r, n)
- cylinder(ax, ...)

## Input argument

- r - Profile curve: vector.
- n - Number of points: positive whole number.
- ax - Target axes: 'axes' object.

## Output argument

- X, Y, Z - x-, y-, and z- coordinates of a cylinder without drawing it.

## Description

  <p><b>cylinder</b> creates cylinder and plots it.</p>

## Examples

```matlab
f1 = figure();
colormap(spring)
cylinder()
```

<img src="cylinder_1_391729CC.svg" align="middle"/>

```matlab
f2 = figure();
colormap(summer)
r = 4;
cylinder(r);
```

<img src="cylinder_2_325EDE9E.svg" align="middle"/>

## See also

[sphere](sphere.md), [surf](surf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
