# axes

Create cartesian axes.

## Syntax

- ax = axes()
- ax = axes(parent)
- ax = axes(propertyName, propertyValue)
- ax = axes(parent, propertyName, propertyValue)
- axes(cax)

## Input argument

- parent - a scalar graphics object value: parent container, specified as a figure.
- cax - axes to make current.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- ax - a graphics object: axes type.

## Description

  <p><b>axes</b> creates axes in the current figure and set it as the current axes.</p>
  <p><b>axes(cax)</b> set current axes.</p>
  <p>Properties:</p>
  <p/>
  <p><b>ALim</b> Alpha limits: two-element vector of the form [amin, amax].</p>
  <p><b>ALimMode</b> Selection mode for ALim: 'manual' or 'auto' (default).</p>
  <p><b>AmbientLightColor</b> Background light color: RGB triplet or string color.</p>
  <p><b>Box</b> Box: 'on' or 'off'.</p>
  <p><b>CLim</b> Color limits: two-element vector of the form [cmin, cmax] or [0 1] (default).</p>
  <p><b>CLimMode</b> Selection mode for CLim: 'manual' or 'auto' (default).</p>
  <p><b>CameraPosition</b> Camera location: vector [x, y, z].</p>
  <p><b>CameraPositionMode</b> Selection mode for CameraPosition: 'manual' or 'auto' (default).</p>
  <p><b>CameraTarget</b> Camera target point: vector [x, y, z].</p>
  <p><b>CameraTargetMode</b> Selection mode for CameraTarget: 'manual' or 'auto' (default).</p>
  <p><b>CameraUpVector</b> Vector defining upwards direction: vector [x, y, z].</p>
  <p><b>CameraUpVectorMode</b> Selection mode for CameraUpVector: 'manual' or 'auto' (default).</p>
  <p><b>CameraViewAngle</b> Field of view: 0 (default) | scalar angle in range [0,180]</p>
  <p><b>CameraViewAngleMode</b> Selection mode for CameraViewAngle: 'manual' or 'auto' (default).</p>
  <p><b>Children</b> Array of graphics objects:  A vector containing graphics objects to children of the current axis.</p>
  <p><b>Clipping</b> Clipping of objects to axes limits: 'on' (default) or 'off'.</p>
  <p><b>Color</b> Background color for the axes: RGB triplet or string color.</p>
  <p><b>ColorOrder</b> Color order: three-column matrix of RGB triplets.</p>
  <p><b>DataAspectRatio</b> Relative length of data units: vector [x, y, z].</p>
  <p><b>DataAspectRatioMode</b> Data aspect ratio mode: 'manual' or 'auto' (default).</p>
  <p><b>FontAngle</b> Character slant: 'italic' or 'normal' (default).</p>
  <p><b>FontName</b> Font name</p>
  <p><b>FontSize</b> Font size: scalar numeric value</p>
  <p><b>FontUnits</b> Font size units: 'inches', 'centimeters', 'normalized', 'pixels' or 'points' (default).</p>
  <p><b>FontWeight</b> Character thickness: 'bold' or 'normal' (default).</p>
  <p><b>GridLineStyle</b> Line style for grid lines: '--' , ':', '-.', 'none' or '-' (default).</p>
  <p><b>HandleVisibility</b> Visibility of object handle: 'on' (default) or 'off'.</p>
  <p><b>HitTest</b> Response to captured mouse clicks: 'on' (default) or 'off'.</p>
  <p><b>Interruptible</b> Callback interruption: </p>
  <p><b>Layer</b> Placement of grid lines and tick marks: 'top' or 'bottom' (default).</p>
  <p><b>LineStyleOrder</b> Line style order: character vector, cell array of character vectors, string array or '-' solid line (default).</p>
  <p><b>LineWidth</b> Line width: positive numeric value.</p>
  <p><b>MinorGridLineStyle</b> Line style for minor grid lines: '-', '--', '-.', 'none' or ':' (default).</p>
  <p><b>NextPlot</b> Properties to reset: 'add', 'replacechildren', 'replaceall' or 'replace' (default).</p>
  <p><b>OuterPosition</b> Size and location, including labels and margin: four-element vector.</p>
  <p><b>Parent</b> Parent container: Figure graphics object.</p>
  <p><b>PlotBoxAspectRatio</b> Relative length of each axis: vector [x, y, z].</p>
  <p><b>PlotBoxAspectRatioMode</b> Selection mode for PlotBoxAspectRatio: 'manual' or 'auto' (default).</p>
  <p><b>Position</b> Size and location, excluding margin for labels: four-element vector</p>
  <p><b>PositionMode</b>: 'manual' or 'auto' (default).</p>
  <p><b>Projection</b> Type of projection onto 2-D screen: 'perspective' or 'orthographic' (default).</p>
  <p><b>Selected</b> Selection state: 'on' or 'off' (default).</p>
  <p><b>SelectionHighlight</b> Display of selection graphics objects: 'on' (default) or 'off'.</p>
  <p><b>Tag</b> Object identifier: character vector, string scalar or '' (default).</p>
  <p><b>TickDir</b> Tick mark direction: 'out', 'both', 'none' or 'in' (default).</p>
  <p><b>TickDirMode</b> Selection mode for TickDir: 'manual' or 'auto' (default).</p>
  <p><b>TickLength</b> Tick mark length: two-element vector.</p>
  <p><b>TightInset</b> Margins for text labels: four-element vector [left bottom right top].</p>
  <p><b>Title</b> Text object for title: text object</p>
  <p><b>Type</b> Type of graphics object: 'axes'.</p>
  <p><b>Units</b>  Position units: 'inches', 'centimeters', 'points', 'pixels', 'characters' or 'normalized' (default).</p>
  <p><b>UserData</b> User data: array or []</p>
  <p><b>Visible</b> State of visibility: 'on' (default) or 'off'.</p>
  <p><b>XAxisLocation</b> x-axis location: 'top', 'origin' or 'bottom' (default).</p>
  <p><b>XColor</b>Color of axis line, tick values, and labels:  RGB triplet.</p>
  <p><b>XDir</b> x-axis direction: 'reverse' or 'normal' (default).</p>
  <p><b>XGrid</b> Grid lines: 'on' or 'off' (default).</p>
  <p><b>XLabel</b> Text object for axis label: text object</p>
  <p><b>XLim</b> Minimum and maximum axis limits:  two element vector [min max].</p>
  <p><b>XLimMode</b> Selection mode for axis limits: 'manual' or 'auto' (default). </p>
  <p><b>XMinorGrid</b> Minor grid lines: 'on' or 'off' (default).</p>
  <p><b>XScale</b> Scale of values along axis: 'log' or 'linear' (default).</p>
  <p><b>XTick</b> Tick values: vector of increasing values or [] (default).</p>
  <p><b>XTickLabel</b> Tick labels: cell array of character vectors or '' (default).</p>
  <p><b>XTickLabelMode</b> Selection mode for tick labels: 'manual' or 'auto' (default).</p>
  <p><b>XTickMode</b> Selection mode for tick values: 'manual' or 'auto' (default).</p>
  <p><b>YAxisLocation</b> y-axis location: 'top', 'origin' or 'bottom' (default).</p>
  <p><b>YColor</b>Color of axis line, tick values, and labels:  RGB triplet.</p>
  <p><b>YDir</b> y-axis direction: 'reverse' or 'normal' (default).</p>
  <p><b>YGrid</b> Grid lines: 'on' or 'off' (default).</p>
  <p><b>YLabel</b> Text object for axis label : text object</p>
  <p><b>YLim</b> Minimum and maximum axis limits:  two element vector [min max].</p>
  <p><b>YLimMode</b> Selection mode for axis limits: 'manual' or 'auto' (default).</p>
  <p><b>YMinorGrid</b> Minor grid lines: 'on' or 'off' (default).</p>
  <p><b>YScale</b> Scale of values along axis: 'log' or 'linear' (default).</p>
  <p><b>YTick</b> Tick values: vector of increasing values or [] (default).</p>
  <p><b>YTickLabel</b> Tick labels: cell array of character vectors or '' (default).</p>
  <p><b>YTickLabelMode</b> Selection mode for tick labels: 'manual' or 'auto' (default).</p>
  <p><b>YTickMode</b>Selection mode for tick values: 'manual' or 'auto' (default).</p>
  <p><b>ZColor</b>Color of axis line, tick values, and labels:  RGB triplet.</p>
  <p><b>ZDir</b> z-axis direction: 'reverse' or 'normal' (default).</p>
  <p><b>ZGrid</b> Grid lines: 'on' or 'off' (default).</p>
  <p><b>ZLabel</b> Text object for axis label : text object</p>
  <p><b>ZLim</b> Minimum and maximum axis limits:  two element vector [min max].</p>
  <p><b>ZLimMode</b> Selection mode for axis limits: 'manual' or 'auto' (default).</p>
  <p><b>ZMinorGrid</b> Minor grid lines: 'on' or 'off' (default).</p>
  <p><b>ZScale</b> Scale of values along axis: 'log' or 'linear' (default).</p>
  <p><b>ZTick</b> Tick values: vector of increasing values or [] (default).</p>
  <p><b>ZTickLabel</b> Tick labels: cell array of character vectors or '' (default).</p>
  <p><b>ZTickLabelMode</b> Selection mode for tick labels: 'manual' or 'auto' (default).</p>
  <p><b>ZTickMode</b>Selection mode for tick values: 'manual' or 'auto' (default).</p>
  <p>Some properties are available only for compatibility and have currently no effect on the axes.</p>

## Example

```matlab
f = figure();
ax1 = axes('Position', [0.1 0.1 0.7 0.7]);
ax2 = axes('Position', [0.65 0.65 0.28 0.28]);
x = linspace(0,10);
y1 = sin(x);
y2 = cos(x);
plot(ax1, x, y1);
plot(ax2, x, y2);
```

<img src="axes_AC0709B1.svg" align="middle"/>

## See also

[gcf](gcf.md), [close](close.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
