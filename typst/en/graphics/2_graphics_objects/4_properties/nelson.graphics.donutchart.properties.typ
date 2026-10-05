#import "../../nelson_help.typ": *

= donutchart properties <graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>

donutchart graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[donutchart]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[CategoryCounts];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[CenterLabel];], [updates the label drawn at the center of the donut chart.], [Type: text value. Supported values: character row vector, string scalar, or empty text.], 
  [#strong[CenterLabelFontSize];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[CenterLabelFontSizeMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ColorOrder];], [changes automatically selected colors for subsequent plotted series.], [Type: finite numeric matrix. Supported values: m-by-3 RGB matrix with values in \[0,1\].], 
  [#strong[Data];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[DataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[DataVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[Direction];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'normal', 'reverse'.], 
  [#strong[DisplayOrder];], [changes the displayed order of chart groups or variables.], [Type: text keyword or ordering vector. Supported values: 'ascend', 'descend', or a vector of display indices supported by the chart.], 
  [#strong[EdgeColor];], [updates rendered output on the next graphics refresh.], [Type: color value or color mode keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[ExplodedWedges];], [changes which pie or donut wedges are drawn separated from the center.], [Type: numeric or logical vector. Supported values: empty value or vector with one element per wedge; nonzero entries offset the matching wedge.], 
  [#strong[FaceAlpha];], [updates rendered output on the next graphics refresh.], [Type: numeric scalar or numeric array. Supported values: values in \[0,1\]; data arrays must match the related rendered data.], 
  [#strong[FaceColor];], [updates rendered output on the next graphics refresh.], [Type: color value or color mode keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[FontColor];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[FontName];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'.], 
  [#strong[FontSize];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[FontSizeMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[InnerPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[InnerRadius];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[Interpreter];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'tex', 'none'.], 
  [#strong[LabelStyle];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles.], 
  [#strong[LabelStyleMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[Labels];], [updates rendered output on the next graphics refresh.], [Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values.], 
  [#strong[LabelsMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[Layout];], [updates the object placement requested from the parent layout manager.], [Type: layout options object or empty value. Supported values: layout information stored by parent layout managers, including tile placement data where the object supports tiled layouts.], 
  [#strong[LegendTitle];], [updates the title displayed above legend entries.], [Type: text value. Supported values: character row vector, string scalar, or empty text.], 
  [#strong[LegendVisible];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[LineWidth];], [updates rendered output on the next graphics refresh.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[Names];], [updates rendered output on the next graphics refresh.], [Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values.], 
  [#strong[NamesMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[NamesVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[NumDisplayWedges];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[OuterPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[Position];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[PositionConstraint];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Proportions];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[ShowOthers];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[SourceTable];], [updates the stored object state.], [Type: table or empty array. Supported values: \[\] or a table used by variable-name properties.], 
  [#strong[StartAngle];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[Title];], [updates the displayed title or the title object associated with the graphics item.], [Type: text graphics object or text value, depending on the object class. Supported values: a title text object, character row vector, string scalar, or empty text.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[Units];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[WedgeDisplayData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[WedgeDisplayNames];], [updates rendered output on the next graphics refresh.], [Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
f = figure('Visible', 'off');
h = donutchart(f, [1 2 3]);
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.donutchart>)[donutchart];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Property page added.],
)

// Author: Allan CORNET
