# gcf

get current figure graphics object.

## Syntax

- cf = gcf()

## Output argument

- cf - a graphics object: figure graphics object.

## Description

<p>
            <b>cf = gcf()</b> returns the current figure graphics object.</p>
<p>If a figure does not exist, <b>gcf()</b> creates a figure and returns its graphics object.</p>

## Example

```matlab
cf = gcf();
root = groot();
isequal(root.CurrentFigure, cf)
```

## See also

[figure](../graphics/figure.md), [groot](../graphics/groot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
