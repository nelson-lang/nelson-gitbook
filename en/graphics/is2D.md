# is2D

Checks if ax is a 2-D Polar or Cartesian axes.

## Syntax

- tf = is2D(ax)

## Input argument

- ax - a scalar graphic object: axe.

## Output argument

- tf - a logical scalar.

## Description

  <p><b>is2D</b> returns Checks if ax is a 2-D Polar or Cartesian axes.</p>

## Example

```matlab
f = figure();
ax = gca();
plot(ax, 1:10, sin(1:10));
assert_istrue(is2D(ax));

f = figure();
surf(peaks);
ax = gca();
assert_isfalse(is2D(ax));
```

## See also

[isgraphics](isgraphics.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
