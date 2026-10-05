# polaraxes

Create axes configured for polar plots.

## 📝 Syntax

- polaraxes()
- polaraxes(propertyName, propertyValue, ...)
- ax = polaraxes(...)

## 📥 Input argument

- propertyName - Axes property name: scalar string or row vector of characters.
- propertyValue - Value assigned to the preceding axes property.

## 📤 Output argument

- ax - Axes graphics object initialized for polar plotting.

## 📄 Description


<b>polaraxes</b> creates an axes object and initializes it for polar coordinate rendering. 

The polar state is stored on the axes and contains radial limits, angular limits, tick values, tick labels, grid handles, and plotted data handles. 

The axes remains an axes graphics object. Use <b>polarplot</b> to add polar data and use <b>rlim</b>, <b>rticks</b>, <b>rticklabels</b>, <b>thetalim</b>, <b>thetaticks</b>, and <b>thetaticklabels</b> to customize polar decorations. 

See [polaraxes properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.polaraxes.properties.md) for the complete property list.

## 💡 Example

Create a polar axes and plot into it.

```matlab

ax = polaraxes();
theta = linspace(0, 2*pi, 80);
polarplot(ax, theta, 1 + sin(theta));
rlim(ax, [0 2]);

```
<img src="polaraxes_1.svg" align="middle"/>


## 🔗 See also

[polaraxes properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.polaraxes.properties.md), [polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md), [axes](../../../graphics/2_graphics_objects/1_object_management/axes.md), [rlim](../../../graphics/3_labels_styling/1_axes_appearance/rlim.md), [thetalim](../../../graphics/3_labels_styling/1_axes_appearance/thetalim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
