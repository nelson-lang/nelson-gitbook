# sphere

Create sphere.

## Syntax

- [X, Y, Z] = sphere()
- [X, Y, Z] = sphere(n)
- sphere()
- sphere(n)
- sphere(ax, n)

## Input argument

- n - Number of points: positive whole number.
- ax - Target axes: 'axes' object.

## Output argument

- X, Y, Z - x-, y-, and z- coordinates of a sphere without drawing it.

## Description

<p>
            sphere creates sphere and plots it.</p>

## Example

```matlab
f = figure();
colormap(gray);
subplot(1, 3, 1);
ax1 = gca();
sphere(ax1);
axis equal
title(_('20-by-20 faces (Default)'));
subplot(1, 3, 2);
ax2 = gca();
sphere(ax2, 50);
axis equal
title(_('50-by-50 faces'));
subplot(1, 3, 3);
ax3 = gca();
sphere(ax3,100);
axis equal
title(_('100-by-100 faces'));
```

<img src="sphere.svg" align="middle"/>

## See also

[cylinder](../graphics/cylinder.md), [surf](../graphics/surf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
