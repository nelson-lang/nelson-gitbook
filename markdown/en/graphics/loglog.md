# loglog

Log-log scale plot.

## 📝 Syntax

- loglog(X, Y)
- loglog(X, Y, LineSpec)
- loglog(Y)
- loglog(Y, LineSpec)
- loglog(ax, ...)
- loglog(..., propertyName, propertyValue)
- go = loglog(...)

## 📥 Input argument

- X - Log scale coordinates: scalar, vector or matrix.
- Y - Log scale coordinates: scalar, vector or matrix.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: line type.

## 📄 Description

<b>loglog(X, Y)</b> plots data using a base 10 logarithmic scale for the x-axis and the y-axis.

<b>loglog</b> has the exact same syntax as the<b>plot</b> command.

## 💡 Examples

```matlab
f = figure();
x = logspace(-1,2);
y = 2 .^ x;
loglog(x,y)
grid on
```

<img src="loglog_1.svg" align="middle"/>

```matlab
f = figure();
x = logspace(-1,2,20);
y = 10 .^ x;
loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
grid on
```

<img src="loglog_2.svg" align="middle"/>

## 🔗 See also

[semilogx](../graphics/semilogx.md), [semilogy](../graphics/semilogy.md), [line](../graphics/line.md), [plot](../graphics/plot.md), [grid](../graphics/grid.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
