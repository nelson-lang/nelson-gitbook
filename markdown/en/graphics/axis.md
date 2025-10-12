# axis

Set axis limits and aspect ratios.

## Syntax

- axis([xmin, xmax, ymin, ymax, zmin, zmax, cmin, cmax])
- axis([xmin, xmax, ymin, ymax, zmin, zmax])
- axis([xmin, xmax, ymin, ymax])
- axis(style)
- axis(mode)
- axis(visibility)
- lim = axis()
- axis(ax, ...)

## Input argument

- [xmin, xmax, ymin, ymax, zmin, zmax, cmin, cmax] - sets the limits in the X, Y, Z and color axes.
- [xmin, xmax, ymin, ymax, zmin, zmax] - sets only the limits in the X, Y, Z.
- [xmin, xmax, ymin, ymax] - sets only the limits in the X, Y.
- style - 'tight', 'equal', 'image', 'square', 'fill', 'vis3d' or 'normal' (default).
- cax - axes.
- visibility - 'off' or 'on' (default).
- mode - 'manual' (turns off automatic scaling of the axis based on the children of the current axis object) or 'auto' (choose automatically all axis limits) .

## Output argument

- lim - For 2D: [xmin, xmax, ymin, ymax] or for 3D: [xmin, xmax, ymin, ymax, zmin, zmax]

## Description

<p>
            axes set axis limits and appearance.</p>

## Example

```matlab
f = figure();
t = 0:0.01:2*pi;
x = cos(t);
subplot(2, 2, 1);
plot(t, x);
title ('normal plot');

subplot(2, 2, 2);
plot (t, x);
title('axis square');
axis('square');

subplot(2, 2, 3);
plot (t, x);
title('axis equal');
axis('equal');

subplot(2, 2, 4);
plot (t, x);
title('normal plot again');
axis('normal');
```

<img src="axis.svg" align="middle"/>

## See also

[gca](../graphics/gca.md), [axes](../graphics/axes.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
