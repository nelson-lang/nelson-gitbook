# xlabel

Label x-axis.

## Syntax

- xlabel(text)
- xlabel(ax, text)
- xlabel(..., propertyName, propertyValue)
- go = xlabel(...)

## Input argument

- text - Text to display: character vector, string scalar, string array or cell array.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: text type.

## Description

  <p><b>xlabel('text')</b> labels the x-axis of the current axes.</p>

## Example

```matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
xlabel('X axis Label - Unicode ドラゴンボールX(ゼット)')
```

<img src="xlabel_79539F01.svg" align="middle"/>

## See also

[text](text.md), [title](title.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
