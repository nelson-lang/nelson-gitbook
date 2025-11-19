# semilogy

Semilog plot (y-axis has log scale).

## 📝 Syntax

- semilogy(X, Y)
- semilogy(X, Y, LineSpec)
- semilogy(Y)
- semilogy(Y, LineSpec)
- semilogy(ax, ...)
- semilogy(..., propertyName, propertyValue)
- go = semilogy(...)

## 📥 Input argument

- X - Linear scale coordinates: scalar, vector or matrix.
- Y - Log scale coordinates: scalar, vector or matrix.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: line type.

## 📄 Description

<b>semilogy(X, Y)</b> plots data using a base 10 logarithmic scale for the y-axis and a normal (linear) scale for the x-axis.

<b>semilogy</b> has the exact same syntax as the<b>plot</b> command.

## 💡 Examples

```matlab
f = figure();
x = 1:100;
y1 = x.^2;
y2 = x.^3;
semilogy(x,y1,'--',x,y2)
legend('x^2','x^3','Location','northwest')
```

<img src="semilogy_1.svg" align="middle"/>

```matlab
f = figure();
y = [ 0.1    1     10
      0.2    2     20
      1.0    10    100
      10     100   1000
      1000   10000 100000];

semilogy(y)
grid on
```

<img src="semilogy_2.svg" align="middle"/>

## 🔗 See also

[semilogx](../graphics/semilogx.md), [line](../graphics/line.md), [plot](../graphics/plot.md), [grid](../graphics/grid.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
