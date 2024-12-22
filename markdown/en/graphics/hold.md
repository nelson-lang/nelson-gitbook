# hold

Retain current plot when adding new plots.

## Syntax

- hold('on')
- hold('off')
- hold('all')
- hold()
- hold(ax, ...)

## Input argument

- 'on' - turn hold on.
- 'off' - turn hold off.
- 'all' - same as hold on.
- ax - Target axes: axes.

## Output argument

- ax - a graphics object: axes type.

## Description

  <p><b>hold</b> allows to construct a plot sequence incrementally.</p>

## Example

```matlab
f = figure();
x = linspace(-pi, pi);
y1 = cos(x);
plot(x, y1)
hold on
y2 = sin(x);
plot(x, y2)
hold off
```

<img src="hold_65362EBC.svg" align="middle"/>

## See also

[ishold](ishold.md), [newplot](newplot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
