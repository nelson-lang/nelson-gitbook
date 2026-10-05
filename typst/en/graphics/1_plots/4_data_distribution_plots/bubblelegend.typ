#import "../../nelson_help.typ": *

= bubblelegend <graphics:1_plots.4_data_distribution_plots.bubblelegend>

Add a bubble size legend.

== Syntax

- #raw("bubblelegend(title)");
- #raw("bubblelegend(ax, title)");
- #raw("bubblelegend(..., propertyName, propertyValue)");
- #raw("bl = bubblelegend(...)");

== Input argument

/ title: Legend title text.
/ propertyName, propertyValue: Name-value pairs for the bubble legend object.

== Output argument

/ bl: Bubble legend graphics object.

== Description

#strong[bubblelegend]; creates a #strong[bubblelegend]; graphics object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblelegend.properties>)[bubblelegend properties]; for the complete property list.


== Example

Add a legend for bubble sizes.

``````matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblesize([5 30]);
bubblelegend('Population', 'Location', 'eastoutside');
``````


#align(center)[#image("bubblelegend_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblelegend.properties>)[bubblelegend properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblesize>)[bubblesize];.

// Author: Allan CORNET
