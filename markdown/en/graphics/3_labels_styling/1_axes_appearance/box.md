# box

Display or hide graphics object outline.

## 📝 Syntax

- box
- box('on')
- box('off')
- box(visibility)
- box(target, ...)

## 📥 Input argument

- visibility - Outline visibility: 'on', 'off', true, false, 1, or 0.
- target - Target object with a Box property, such as axes, legend, or colorbar.

## 📄 Description


<b>box()</b> toggles the outline of the current axes. 

<b>box('on')</b> displays the current axes outline. 

<b>box('off')</b> hides the current axes outline. 

<b>box(target, ...)</b> modifies the outline of the specified target instead of the current axes.

## 💡 Example



```matlab
f = figure();
plot(1:10)
box on
```
<img src="box.svg" align="middle"/>


## 🔗 See also

[axes](../../../graphics/2_graphics_objects/1_object_management/axes.md), [grid](../../../graphics/3_labels_styling/1_axes_appearance/grid.md), [legend](../../../graphics/3_labels_styling/4_labels_annotations/legend.md), [colorbar](../../../graphics/3_labels_styling/4_labels_annotations/colorbar.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
