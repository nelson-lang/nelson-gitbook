#import "../../nelson_help.typ": *

= datetick <graphics:3_labels_styling.1_axes_appearance.datetick>

Date formatted tick labels.

== Syntax

- #raw("datetick()");
- #raw("datetick(tickaxis)");
- #raw("datetick(tickaxis, dateFormat)");
- #raw("datetick(..., 'keeplimits')");
- #raw("datetick(..., 'keepticks')");
- #raw("datetick(ax, ...)");

== Input argument

/ tickaxis: Axis to label: 'x' (default), 'y' or 'z'.
/ dateFormat: Date format, given as a #strong[datestr]; format string (for example 'yyyy') or format number.
/ 'keeplimits': Keep the current axis limits.
/ 'keepticks': Keep the current tick locations.
/ ax: Target axes. Default is the current axes.

== Description

#strong[datetick]; labels the ticks of an axis using dates, treating the tick values as serial date numbers (see #strong[datenum];).

 When no format is given, a format is chosen from the range spanned by the ticks. Use #strong[keepticks]; to preserve the current tick locations and #strong[keeplimits]; to preserve the current limits.


== Example

Label the x-axis with years.

``````matlab

t = datenum(2000, 1, 1):365:datenum(2010, 1, 1);
plot(t, rand(1, numel(t)));
datetick('x', 'yyyy');

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
