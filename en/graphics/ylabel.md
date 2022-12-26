# ylabel

Label y-axis.

## Syntax

- ylabel(text)
- ylabel(ax, text)
- ylabel(..., propertyName, propertyValue)
- go = ylabel(...)

## Input argument

- text - Text to display: character vector, string scalar, string array or cell array.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: text type.

## Description

  <p><b>ylabel('text')</b> labels the y-axis of the current axes.</p>

## Example

```matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
ylabel('Y axis Label - Unicode ドラゴンボールY(ゼット)')
```

<img src="ylabel_98FAB712.svg" align="middle"/>

## See also

[text](text.md), [title](title.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
