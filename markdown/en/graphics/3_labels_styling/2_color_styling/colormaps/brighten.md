# brighten

Brighten or darken a colormap.

## 📝 Syntax

- brighten(beta)
- brighten(ax, beta)
- newmap = brighten(beta)
- newmap = brighten(map, beta)

## 📥 Input argument

- beta - Scalar in the interval (-1, 1). Positive brightens, negative darkens.
- map - Colormap, an M-by-3 matrix of RGB values in [0, 1].
- ax - Target axes or figure whose colormap is modified.

## 📤 Output argument

- newmap - Brightened colormap.

## 📄 Description


<b>brighten</b> increases (<b>beta</b> > 0) or decreases (<b>beta</b> < 0) the brightness of a colormap. With no output argument it replaces the colormap of the current figure (or of <b>ax</b>); with an output it returns the modified colormap. As <b>beta</b> approaches 1 the colors approach white, and as it approaches -1 they approach black.

## Used function(s)

colormap

## 💡 Example



```matlab
f = figure();
surf(peaks());
colormap(jet());
brighten(0.5);
```


## 🔗 See also

[colormap](../../../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
