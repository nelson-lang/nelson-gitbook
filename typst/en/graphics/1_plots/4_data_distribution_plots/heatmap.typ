#import "../../nelson_help.typ": *

= heatmap <graphics:1_plots.4_data_distribution_plots.heatmap>

Create a heatmap chart from a numeric matrix or table.

== Syntax

- #raw("heatmap(C)");
- #raw("heatmap(xvalues, yvalues, C)");
- #raw("heatmap(tbl, xvar, yvar)");
- #raw("heatmap(tbl, xvar, yvar, 'ColorVariable', cvar)");
- #raw("heatmap(parent, ...)");
- #raw("heatmap(..., propertyName, propertyValue)");
- #raw("h = heatmap(...)");

== Input argument

/ C: Numeric matrix used as color data.
/ xvalues: Labels for matrix columns: cell string, string, character, or numeric vector.
/ yvalues: Labels for matrix rows: cell string, string, character, or numeric vector.
/ tbl: Source table used to calculate heatmap values.
/ xvar: Table variable used for x categories.
/ yvar: Table variable used for y categories.
/ cvar: Numeric table variable averaged for each x\/y category pair.
/ parent: Axes or hggroup parent.
/ propertyName: Supported property name.
/ propertyValue: Property value.

== Output argument

/ h: Heatmap chart object containing the heatmap image, grid, labels, and colorbar state.

== Description

#strong[heatmap]; displays a numeric matrix as a scaled color image with row and column labels. For table input, categories are sorted and the color data is aggregated by category pair.

 With #strong[heatmap(tbl, xvar, yvar)];, color data contains counts and #strong[ColorMethod]; is #strong[count];. With #strong[ColorVariable];, color data contains means and #strong[ColorMethod]; is #strong[mean];.

 This implementation returns a #strong[heatmap]; chart object. The chart #strong[UserData]; contains the fields #strong[ChartType];, #strong[Image];, #strong[Grid];, #strong[CellLabels];, #strong[Colorbar];, #strong[XData];, #strong[YData];, #strong[ColorData];, #strong[SourceTable];, #strong[XVariable];, #strong[YVariable];, #strong[ColorVariable];, #strong[ColorMethod];, and #strong[Options];.

 Supported name\/value properties are #strong[Title];, #strong[XLabel];, #strong[YLabel];, #strong[SourceTable];, #strong[XVariable];, #strong[YVariable];, #strong[ColorVariable];, #strong[ColorMethod];, #strong[XData];, #strong[YData];, #strong[XDisplayLabels];, #strong[YDisplayLabels];, #strong[ColorLimits];, #strong[Colormap];, #strong[ColorbarVisible];, #strong[GridVisible];, #strong[CellLabelFormat];, #strong[CellLabelColor];, #strong[MissingDataLabel];, #strong[FontColor];, #strong[FontSize];, and #strong[Visible];.


== Examples

Display a numeric heatmap.

``````matlab
C = [1 2 3; 4 5 6];
heatmap(C);
``````


#align(center)[#image("heatmap_1.svg")]
Use row and column labels.

``````matlab
C = [3 7 2; 6 5 8];
heatmap({'A', 'B', 'C'}, {'Low', 'High'}, C, ...
  'Title', 'Scores', 'XLabel', 'Column', 'YLabel', 'Group');
``````


#align(center)[#image("heatmap_2.svg")]
Create a heatmap from table categories.

``````matlab
T = table({'B'; 'A'; 'B'}, {'Y'; 'X'; 'X'}, [2; 5; 8], ...
  'VariableNames', {'x', 'y', 'v'});
heatmap(T, 'x', 'y', 'ColorVariable', 'v');
``````


#align(center)[#image("heatmap_3.svg")]
Customize colors and labels.

``````matlab
C = peaks(12);
heatmap(C, 'ColorLimits', [-6 8], 'Colormap', turbo(64), ...
  'CellLabelFormat', '%0.1f', 'GridVisible', 'off');
``````


#align(center)[#image("heatmap_4.svg")]

== See also

#nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.
