#import "../../nelson_help.typ": *

= contour properties <graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>

contour graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[contour]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [updates the annotation metadata used by interactive tools and object inspection.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[ContourMatrix];], [updates rendered output on the next graphics refresh.], [Type: finite numeric matrix. Supported values: \[\] or a matrix with one row per vertex, normal, point, or contour segment.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the content used for interactive data tips.], [Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [updates the label used by legend entries and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[EdgeAlpha];], [updates rendered output on the next graphics refresh.], [Type: numeric scalar or numeric array. Supported values: values in \[0,1\]; data arrays must match the related rendered data.], 
  [#strong[EdgeColor];], [updates rendered output on the next graphics refresh.], [Type: color value or color mode keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[FaceAlpha];], [updates rendered output on the next graphics refresh.], [Type: numeric scalar or numeric array. Supported values: values in \[0,1\]; data arrays must match the related rendered data.], 
  [#strong[FaceColor];], [updates rendered output on the next graphics refresh.], [Type: color value or color mode keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[Fill];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Floating];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [includes or excludes the object from mouse hit testing.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LabelColor];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[LabelFormat];], [changes how numeric chart labels are formatted.], [Type: text value. Supported values: character row vector or string scalar containing a numeric format, or empty text.], 
  [#strong[LabelSpacing];], [changes spacing between chart labels and chart geometry.], [Type: numeric scalar. Supported values: nonnegative finite scalar.], 
  [#strong[LevelList];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: \[\] or a finite numeric vector, normally increasing.], 
  [#strong[LevelListMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LevelStep];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[LevelStepMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LineColor];], [updates rendered output on the next graphics refresh.], [Type: color value or color mode keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[LineStyle];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [updates rendered output on the next graphics refresh.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[PickableParts];], [selects which visible or invisible parts can receive mouse hits.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ShowText];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[TextList];], [updates rendered output on the next graphics refresh.], [Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values.], 
  [#strong[TextListMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[TextStep];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[TextStepMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[XDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[YDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[ZDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZLocation];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
[~, h] = contour(ax, peaks(8));
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Property page added.],
)

// Author: Allan CORNET
