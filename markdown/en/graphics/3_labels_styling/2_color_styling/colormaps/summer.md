# summer

Summer colormap array.

## 📝 Syntax

- c = summer
- c = autumn(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Summer colormap array.

## 📄 Description

<b>summer</b> returns the colormap with summer colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('summer');
```

<img src="summer.svg" align="middle"/>

## 🔗 See also

[colormap](../../../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
