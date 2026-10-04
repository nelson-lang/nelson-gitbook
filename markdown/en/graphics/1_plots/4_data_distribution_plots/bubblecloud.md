# bubblecloud

Display labeled bubbles packed in a cloud layout.

## 📝 Syntax

- bubblecloud(sizes)
- bubblecloud(sizes, labels)
- bubblecloud(sizes, labels, groups)
- bubblecloud(tbl, sizeVariable)
- bubblecloud(tbl, sizeVariable, labelVariable, groupVariable)
- bubblecloud(..., propertyName, propertyValue)
- h = bubblecloud(...)

## 📄 Description

<b>bubblecloud</b> creates a <b>bubblecloud</b> chart object from numeric bubble sizes. Labels and groups can be supplied as vectors with the same number of elements as the size data.

Table input can be used by naming the size, label, and group variables.

The returned object exposes the chart data through <b>SizeData</b>, <b>LabelData</b>, and <b>GroupData</b>. Supported appearance properties include <b>Title</b>, <b>LegendTitle</b>, <b>FaceColor</b>, and <b>EdgeColor</b>.

The [bubblecloud properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.bubblecloud.properties.md) page lists the supported object properties.

## 💡 Examples

Display labeled bubbles.

```matlab
bubblecloud([10 20 30], {'A','B','C'}, {'G1','G1','G2'}, 'Title', 'Cloud');
```

<img src="bubblecloud_1.svg" align="middle"/>
Create a bubble cloud from table variables.

```matlab
t = table([5; 10; 20], {'A'; 'B'; 'C'}, {'G1'; 'G1'; 'G2'}, ...
  'VariableNames', {'Size', 'Label', 'Group'});
bubblecloud(t, 'Size', 'Label', 'Group');
```

<img src="bubblecloud_2.svg" align="middle"/>

## 🔗 See also

[bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [bubblecloud properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.bubblecloud.properties.md), [wordcloud](../../../graphics/1_plots/4_data_distribution_plots/wordcloud.md).
