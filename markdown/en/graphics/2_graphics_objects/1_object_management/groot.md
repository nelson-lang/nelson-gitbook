# groot

graphic root object.

## 📝 Syntax

- g = groot()

## 📤 Output argument

- g - a graphics object: root object.

## 📄 Description

<b>groot</b> returns the graphics root object.

See [groot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.groot.properties.md) for the complete property list.

Root defaults can be set with names of the form <b>Default</b><i>Object</i><i>Property</i>. For example, <b>set(groot(), 'DefaultFigureColormap', cmap)</b> changes the colormap used by new figures. Use the value <b>'remove'</b> to restore the factory default.

## 💡 Example

```matlab
g = groot()
g.ScreenDepth
```

## 🔗 See also

[groot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.groot.properties.md), [figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
