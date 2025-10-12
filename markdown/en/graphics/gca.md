# gca

get current axes graphics object.

## Syntax

- ca = gca()

## Output argument

- ca - a graphics object: axes graphics object.

## Description

<p>
            ca = gca() returns the current axes graphics object.</p>

<p>If there are no axes, gca() creates an axes and returns its graphics object.</p>

## Example

```matlab
ca = gca()
isgraphics(ax, 'axes')
```

## See also

[isgraphics](../graphics/isgraphics.md), [axes](../graphics/axes.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
