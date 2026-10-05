#import "../../nelson_help.typ": *

= violinplot <graphics:1_plots.4_data_distribution_plots.violinplot>

Display distributions as violin shapes.

== Syntax

- #raw("violinplot(y)");
- #raw("violinplot(xgroupdata, y)");
- #raw("violinplot('EvaluationPoints', evalPoints, 'DensityValues', densityValues)");
- #raw("violinplot(..., propertyName, propertyValue)");
- #raw("h = violinplot(...)");

== Description

#strong[violinplot]; displays distributions as violin shapes and returns one or more #strong[violinplot]; graphics objects.

 For vector data, the returned object keeps #strong[XData]; as group positions and #strong[YData]; as the original values. For matrix data, one object is returned for each column.

 With #strong[EvaluationPoints]; and #strong[DensityValues]; and no sample data, #strong[violinplot]; draws precomputed densities: one violin per column, at positions 1, 2, ... Both arguments are then required, and they cannot be combined with sample data.

 Each violin outlines a Gaussian kernel density estimate of its values, evaluated on 100 points from min(y) - 3h to max(y) + 3h. The bandwidth follows the normal reference rule with a robust scale: h \= (MAD \/ 0.6745) \* (4 \/ (3 n))^(1\/5), where MAD is the median absolute deviation. When the MAD is zero the data range is used as the scale, and constant data use h \= 1.

 The #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>)[violinplot properties]; page lists the supported object properties.


== Example

Display grouped distributions.

``````matlab
violinplot([1 1 1 2 2 2], [1 2 2 3 4 5]);
``````


#align(center)[#image("violinplot_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.boxchart>)[boxchart];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>)[violinplot properties];.
