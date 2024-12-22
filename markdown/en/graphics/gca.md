# gca

get current axes graphics object.

## Syntax

- ca = gca()

## Output argument

- ca - a graphics object: axes graphics object.

## Description

  <p><b>ca = gca()</b> returns the current axes graphics object.</p>
  <p>If there are no axes, <b>gca()</b> creates an axes and returns its graphics object.</p>

## Example

```matlab
ca = gca()
isgraphics(ax, 'axes')
```

## See also

[isgraphics](isgraphics.md), [axes](axes.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
