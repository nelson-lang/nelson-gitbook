# uiaxes

Create axes for App Designer style apps.

## 📝 Syntax

- ax = uiaxes()
- ax = uiaxes(parent)
- ax = uiaxes(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- ax - axes object.

## 📄 Description


<b>ax = uiaxes</b> creates axes suitable for uifigure based apps and returns the axes object. It behaves like <b>axes</b> with UIAxes defaults: <b>Units</b> = 'pixels', <b>Position</b> = [10 10 400 300], <b>NextPlot</b> = 'replacechildren', <b>FontUnits</b> = 'pixels'. Pass the axes to plotting functions: <b>plot(ax, ...)</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Axes UI', 'Position', [100 100 420 260]);
f.HandleVisibility = 'on';
ax = uiaxes(f, 'Position', [45 45 330 175]);
x = 0:0.1:2*pi;
plot(ax, x, sin(x), 'LineWidth', 1.5);
title(ax, 'Sine');
drawnow();
```
<img src="uiaxes_example.svg" align="middle"/>
uiaxes

```matlab

f = uifigure();
ax = uiaxes(f, 'Position', [30 30 400 300]);
plot(ax, 1:10, (1:10).^2);

```


## 🔗 See also

[uifigure](../../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
