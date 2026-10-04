# bubblelegend

Add a bubble size legend.

## 📝 Syntax

- bubblelegend(title)
- bubblelegend(ax, title)
- bubblelegend(..., propertyName, propertyValue)
- bl = bubblelegend(...)

## 📥 Input argument

- title - Legend title text.
- propertyName, propertyValue - Name-value pairs for the bubble legend object.

## 📤 Output argument

- bl - Bubble legend graphics object.

## 📄 Description

<b>bubblelegend</b> creates a <b>bubblelegend</b> graphics object.

See [bubblelegend properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.bubblelegend.properties.md) for the complete property list.

## 💡 Example

Add a legend for bubble sizes.

```matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblesize([5 30]);
bubblelegend('Population', 'Location', 'eastoutside');
```

<img src="bubblelegend_1.svg" align="middle"/>

## 🔗 See also

[bubblelegend properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.bubblelegend.properties.md), [bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [bubblesize](../../../graphics/1_plots/4_data_distribution_plots/bubblesize.md).

<!--
## 👤 Author

Allan CORNET
-->
