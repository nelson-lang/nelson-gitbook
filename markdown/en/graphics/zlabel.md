# zlabel

Label z-axis.

## 📝 Syntax

- zlabel(text)
- zlabel(ax, text)
- zlabel(..., propertyName, propertyValue)
- go = zlabel(...)

## 📥 Input argument

- text - Text to display: character vector, string scalar, string array or cell array.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: text type.

## 📄 Description

<b>zlabel('text')</b> labels the z-axis of the current axes.

## 💡 Example

```matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
zlabel('Z axis Label - Unicode ドラゴンボールZ(ゼット)')
```

<img src="zlabel.svg" align="middle"/>

## 🔗 See also

[text](../graphics/text.md), [title](../graphics/title.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
