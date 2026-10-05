# theme

Set the color theme of a figure.

## 📝 Syntax

- theme(themename)
- theme(f, themename)
- theme(f, t)
- t = theme(...)

## 📥 Input argument

- themename - a string: 'light' or 'dark'.
- f - a graphics object. Target figure. If a non-figure object is given, its ancestor figure is used. If omitted, the current figure is used.
- t - a theme object, as returned by the <b>Theme</b> property of a figure.

## 📤 Output argument

- t - the theme object applied to the figure.

## 📄 Description


<b>theme</b> sets the color theme of a figure to <b>'light'</b> or <b>'dark'</b>. 

Applying a theme updates the <b>Theme</b> property of the figure and the colors of the figure and its children that use theme-managed colors. 

With no figure argument, the theme is applied to the current figure returned by <b>gcf</b>.

## 💡 Examples

Apply a dark theme to a figure.

```matlab
f = figure();
surf(peaks);
theme(f, 'dark');

```
Query the theme applied to the current figure.

```matlab
f = figure();
t = theme('light')

```


## 🔗 See also

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md), [colororder](../../../graphics/3_labels_styling/2_color_styling/colororder.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
