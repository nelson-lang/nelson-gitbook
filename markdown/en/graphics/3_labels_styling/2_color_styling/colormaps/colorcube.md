# colorcube

Enhanced RGB color cube colormap array.

## 📝 Syntax

- c = colorcube
- c = colorcube(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Enhanced RGB color cube colormap array.

## 📄 Description

<b>colorcube</b> returns a colormap built from RGB cube colors, pure color ramps, black, and gray levels.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('colorcube');
```

<img src="colorcube.svg" align="middle"/>

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
