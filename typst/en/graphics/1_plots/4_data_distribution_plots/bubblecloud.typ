#import "../../nelson_help.typ": *

= bubblecloud <graphics:1_plots.4_data_distribution_plots.bubblecloud>

Display labeled bubbles packed in a cloud layout.

== Syntax

- #raw("bubblecloud(sizes)");
- #raw("bubblecloud(sizes, labels)");
- #raw("bubblecloud(sizes, labels, groups)");
- #raw("bubblecloud(tbl, sizeVariable)");
- #raw("bubblecloud(tbl, sizeVariable, labelVariable, groupVariable)");
- #raw("bubblecloud(..., propertyName, propertyValue)");
- #raw("h = bubblecloud(...)");

== Description

#strong[bubblecloud]; creates a #strong[bubblecloud]; chart object from numeric bubble sizes. Labels and groups can be supplied as vectors with the same number of elements as the size data.

 Table input can be used by naming the size, label, and group variables.

 The returned object exposes the chart data through #strong[SizeData];, #strong[LabelData];, and #strong[GroupData];. Supported appearance properties include #strong[Title];, #strong[LegendTitle];, #strong[FaceColor];, and #strong[EdgeColor];.

 The #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>)[bubblecloud properties]; page lists the supported object properties.


== Examples

Display labeled bubbles.

``````matlab
bubblecloud([10 20 30], {'A','B','C'}, {'G1','G1','G2'}, 'Title', 'Cloud');
``````


#align(center)[#image("bubblecloud_1.svg")]
Create a bubble cloud from table variables.

``````matlab
t = table([5; 10; 20], {'A'; 'B'; 'C'}, {'G1'; 'G1'; 'G2'}, ...
  'VariableNames', {'Size', 'Label', 'Group'});
bubblecloud(t, 'Size', 'Label', 'Group');
``````


#align(center)[#image("bubblecloud_2.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>)[bubblecloud properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.wordcloud>)[wordcloud];.
