#import "../../nelson_help.typ": *

= scatter3 <graphics:1_plots.4_data_distribution_plots.scatter3>

3D Scatter plot.

== Syntax

- #raw("scatter3(x, y, z)");
- #raw("scatter3(x, y, z, sz)");
- #raw("scatter3(x, y, z, sz, c)");
- #raw("scatter3(..., 'filled')");
- #raw("scatter3(..., marker)");
- #raw("scatter3(ax, ...)");
- #raw("scatter3(..., propertyName, propertyValue)");
- #raw("s = scatter3(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: vector or matrix.
/ sz: Marker size: numeric scalar, vector, \[\] (default: 36)
/ c: Marker color: short color name, color name, RGB triplet or vector of colormap indices
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ s: a graphics object: scatter type or array of scatter.

== Description

#strong[scatter(x, y, z)]; generates a scatter plot by placing circular markers at the coordinates defined by the vectors #strong[x];,#strong[y]; and #strong[z];.

 If you intend to display a single dataset, ensure that both #strong[x];,#strong[y]; and #strong[z]; are vectors of the same length.

 To visualize multiple datasets on a shared set of axes, you can achieve this by using a matrix for either #strong[x];, #strong[y]; or#strong[z];, while keeping the other as a vector.

 This allows you to overlay or compare multiple datasets within the same plot.

 

 Scatter Properties:

 

#table(
  columns: 2,
  [Property], [Description], 
  [#strong[AlphaData];], [Marker face transparency, 1 (default) or array the same size as #strong[XData];], 
  [#strong[BeingDeleted];], [Flag indicating that the object is being deleted.], 
  [#strong[BusyAction];], [Callback queuing specified as 'queue' (default) or 'cancel'. The property determines how Nelson handles the execution of interrupting callbacks.], 
  [#strong[CData];], [Marker colors: \[\] (default), RGB triplet, matrix of RGB triplets or vector. Marker color to use for each data series: 'k'\/'black' (Black), 'y'\/'yellow' (Yellow), 'm'\/'magenta' (Magenta), 'c'\/'cyan' (Cyan), 'r'\/'red' (Red), 'b'\/'blue' (Blue), 'g'\/'green' (Green)], 
  [#strong[CDataMode];], [Selection mode for CData: 'manual', 'auto' (default).], 
  [#strong[Children];], [Children.], 
  [#strong[CreateFcn];], [Component creation function.], 
  [#strong[DeleteFcn];], [Component deletion function.], 
  [#strong[DisplayName];], [Legend label: character vector or string scalar, ' ' (default).], 
  [#strong[Interruptible];], [Callback interruption 'on' (default).], 
  [#strong[LineWidth];], [Line width: scalar positive value.], 
  [#strong[Marker];], [Marker symbol: 'o' (Circle), 'x' (Times), '+' (Plus), '\*' (Asterisk), '.' (Dot), 's' (Square), 'd' (Diamond), 'v' (Downward-pointing triangle), '^' (Upward-pointing triangle), ' \> ' (Left-pointing triangle), ' \< ' (Right-pointing triangle)], 
  [#strong[MarkerEdgeColor];], [Marker outline color: RGB triplet.], 
  [#strong[MarkerEdgeAlpha];], [Marker edge transparency: scalar in range \[0,1\], 'flat or 1 (default). To assign distinct transparency values to the edges of each point in a plot, set the AlphaData property to a vector matching the size of the #strong[XData]; property and set the #strong[MarkerEdgeAlpha]; property to #strong['flat'];.], 
  [#strong[MarkerFaceColor];], [Marker fill color: RGB triplet.], 
  [#strong[MarkerFaceAlpha];], [Marker face transparency: scalar in range \[0,1\], 'flat or 1 (default). To assign distinct transparency values to the faces of each point in a plot, set the AlphaData property to a vector matching the size of the #strong[XData]; property and set the #strong[MarkerFaceAlpha]; property to #strong['flat'];.], 
  [#strong[Parent];], [Parent container: Figure graphics object.], 
  [#strong[SizeData];], [Marker sizes:\[\] (default), scalar or vector.], 
  [#strong[Tag];], [Object identifier: character vector, string scalar or ' ' (default).], 
  [#strong[Type];], [Type of graphics object 'scatter'.], 
  [#strong[UserData];], [User data: array or \[\]], 
  [#strong[Visible];], [State of visibility: 'on' (default) or 'off'.], 
  [#strong[XData];], [x values: vector or matrix or \[\] (default).], 
  [#strong[YData];], [y values: vector or matrix or \[\] (default).], 
  [#strong[ZData];], [z values: vector or matrix or \[\] (default).], 
  [#strong[XDataMode];], [Selection mode for XData: 'manual' or 'auto'.], 
)

== Example

``````matlab
f = figure();
n = 100;
x = randn(n,1);
y = randn(n,1);
z = randn(n,1);
c = z;
sz = 20 + 50 * sqrt(x.^2 + y.^2 + z.^2);
scatter3(x, y, z, sz, c, 'filled');
% Add labels and title
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
title('3D Scatter Plot Demo');
grid on;
axis equal;
view(-66.5, 12);
``````


#align(center)[#image("scatter3_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
