# lines

Line color order colormap array.

## 📝 Syntax

- c = lines
- c = lines(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Line color order colormap array.

## 📄 Description

<b>lines</b> returns a colormap based on the default axes color order.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('lines');
```

<img src="lines.svg" align="middle"/>

## 🔗 See also

[colormap](../../../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
