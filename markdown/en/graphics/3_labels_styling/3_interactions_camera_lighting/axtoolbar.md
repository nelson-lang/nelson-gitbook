# axtoolbar

Get or configure the axes toolbar.

## 📝 Syntax

- tb = axtoolbar()
- tb = axtoolbar(buttons)
- tb = axtoolbar(ax)
- tb = axtoolbar(ax, buttons)
- tb = axtoolbar(..., name, value, ...)
- [tb, btns] = axtoolbar(...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes. Default: current axes.
- buttons - a character vector, a string array or a cell array of character vectors: 'default', 'export', 'brush', 'datacursor', 'rotate', 'pan', 'zoom', 'restoreview', 'zoomin' or 'zoomout'. The names are validated only: the figure toolbar of Nelson is shared by all axes.
- name, value - properties of the axes toolbar, for example 'Visible', 'Tag', 'UserData'.

## 📤 Output argument

- tb - a scalar graphics object value: the axes toolbar.
- btns - an empty graphics object array: Nelson has no per-axes buttons.

## 📄 Description


<b>axtoolbar</b> returns the <b>Toolbar</b> object of an axes and applies the given properties to it. 

Use <b>axtoolbar('Visible', 'off')</b> to hide the toolbar of the current axes. 

When the <b>Toolbar</b> property of the target was set to empty, call <b>reset</b> on the target to restore it before <b>axtoolbar</b>.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
tb = axtoolbar('Visible', 'off')
```


## 🔗 See also

[axes properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.axes.properties.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
