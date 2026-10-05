#import "../../nelson_help.typ": *

= colorbar <graphics:3_labels_styling.4_labels_annotations.colorbar>

Add a color scale to axes.

== Syntax

- #raw("colorbar");
- #raw("colorbar(location)");
- #raw("colorbar(target, ...)");
- #raw("colorbar('peer', target, ...)");
- #raw("colorbar(..., propertyName, propertyValue)");
- #raw("colorbar('off')");
- #raw("colorbar('delete')");
- #raw("colorbar('hide')");
- #raw("colorbar(target, 'off')");
- #raw("colorbar(c, 'off')");
- #raw("c = colorbar(...)");

== Input argument

/ location: Colorbar location: 'eastoutside', 'westoutside', 'northoutside', 'southoutside', 'east', 'west', 'north', 'south', or 'manual'. The tokens 'horizontal' and 'vertical' are accepted as compatibility aliases for 'southoutside' and 'eastoutside'.
/ target: Axes that owns the color scale. If omitted, the current axes is used.
/ c: Colorbar graphics object.
/ propertyName, propertyValue: Name-value pairs used to set colorbar properties when it is created.
/ 'off', 'delete', 'hide': Delete the colorbar associated with the current axes, the specified axes, or the specified colorbar.

== Output argument

/ c: Colorbar graphics object.

== Description

#strong[colorbar]; adds a color scale to a plot. The colorbar is a graphics object parented to the figure and associated with a peer axes.

 The default location is #strong[eastoutside];. Outside locations reserve space next to the peer axes. Inside locations draw the colorbar over the axes area. Setting the #strong[Position]; property changes #strong[Location]; to #strong[manual];.

 The #strong[Location]; property also accepts #strong[layout]; for tiled layouts. Use #strong[colorbar(ax, 'Location', 'layout')]; and set #strong[c.Layout.Tile]; to a tile number or to 'east', 'west', 'north', or 'south'. The positional form #strong[colorbar(ax, 'layout')]; is not accepted.

 Important visual properties include #strong[Box];, #strong[Color];, #strong[Direction];, #strong[FontAngle];, #strong[FontName];, #strong[FontSize];, #strong[FontWeight];, #strong[Limits];, #strong[LineWidth];, #strong[AxisLocation];, #strong[TickDirection];, #strong[TickLabelInterpreter];, #strong[TickLabels];, #strong[TickLength];, #strong[Ticks];, #strong[Units];, #strong[Visible];, and #strong[Label];.

 Automatic #strong[Limits];, #strong[Ticks];, and #strong[TickLabels]; are updated from the peer axes color limits and colormap. Assigning #strong[Limits];, #strong[Ticks];, #strong[TickLabels];, #strong[AxisLocation];, or #strong[Position]; switches the corresponding mode property to manual when appropriate.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.colorbar.properties>)[colorbar properties]; for the complete property list.


== Examples

Display a vertical colorbar for a surface.

``````matlab
figure();
surf(peaks);
colormap('summer');
colorbar;
``````


#align(center)[#image("colorbar_1.svg")]
Place a horizontal colorbar below filled contours.

``````matlab
figure();
contourf(peaks);
colormap('parula');
colorbar('southoutside');
``````


#align(center)[#image("colorbar_2.svg")]
Customize ticks, labels, and the colorbar label.

``````matlab
figure();
imagesc(peaks);
cb = colorbar('Ticks', [-6 -3 0 3 6], ...
  'TickLabels', {'low'; '-3'; '0'; '3'; 'high'});
cb.Label.String = 'Scale';
cb.Direction = 'reverse';
``````


#align(center)[#image("colorbar_3.svg")]
Attach a colorbar to a tiled layout edge.

``````matlab
figure();
t = tiledlayout(1, 2);
ax1 = nexttile(t);
imagesc(peaks);
title(ax1, 'Tile 1');
ax2 = nexttile(t);
contourf(peaks);
title(ax2, 'Tile 2');
cb = colorbar(ax2, 'Location', 'layout');
cb.Layout.Tile = 'east';
``````


#align(center)[#image("colorbar_4.svg")]
Try every standard location.

``````matlab
locations = {'north'; 'south'; 'east'; 'west'; ...
  'northoutside'; 'southoutside'; 'eastoutside'; 'westoutside'};
figure();
surf(peaks);
colormap('jet');
for k = 1:length(locations)
  colorbar(locations{k});
  pause(1);
end
``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.colorbar.properties>)[colorbar properties];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];, #nlink(<graphics:3_labels_styling.2_color_styling.clim>)[clim];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], [added support for the location argument],
  [2.0.0], [reimplemented as a native colorbar graphics object],
)

// Author: Allan CORNET
