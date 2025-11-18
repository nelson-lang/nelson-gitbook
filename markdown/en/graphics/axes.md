# axes

Create cartesian axes.

## 📝 Syntax

- ax = axes()
- ax = axes(parent)
- ax = axes(propertyName, propertyValue)
- ax = axes(parent, propertyName, propertyValue)
- axes(cax)

## 📥 Input argument

- parent - a scalar graphics object value: parent container, specified as a figure.
- cax - axes to make current.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- ax - a graphics object: axes type.

## 📄 Description

<b>axes</b> creates axes in the current figure and set it as the current axes.

<b>axes(cax)</b> set current axes.

Clicking on an axis automatically sets it as the current axes object.

Properties:

| Property                   | Description                                                                                                                         |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **ALim**                   | Alpha limits: two-element vector of the form [amin, amax].                                                                          |
| **ALimMode**               | Selection mode for ALim: 'manual' or 'auto' (default).                                                                              |
| **AmbientLightColor**      | Background light color: RGB triplet or string color.                                                                                |
| **Box**                    | Box: 'on' or 'off'.                                                                                                                 |
| **CLim**                   | Color limits: two-element vector of the form [cmin, cmax] or [0 1] (default).                                                       |
| **CLimMode**               | Selection mode for CLim: 'manual' or 'auto' (default).                                                                              |
| **CameraPosition**         | Camera location: vector [x, y, z].                                                                                                  |
| **CameraPositionMode**     | Selection mode for CameraPosition: 'manual' or 'auto' (default).                                                                    |
| **CameraTarget**           | Camera target point: vector [x, y, z].                                                                                              |
| **CameraTargetMode**       | Selection mode for CameraTarget: 'manual' or 'auto' (default).                                                                      |
| **CameraUpVector**         | Vector defining upwards direction: vector [x, y, z].                                                                                |
| **CameraUpVectorMode**     | Selection mode for CameraUpVector: 'manual' or 'auto' (default).                                                                    |
| **CameraViewAngle**        | Field of view: 0 (default) or scalar angle in range [0,180]                                                                         |
| **CameraViewAngleMode**    | Selection mode for CameraViewAngle: 'manual' or 'auto' (default).                                                                   |
| **Children**               | Array of graphics objects: A vector containing graphics objects to children of the current axis.                                    |
| **Clipping**               | Clipping of objects to axes limits: 'on' (default) or 'off'.                                                                        |
| **Color**                  | Background color for the axes: RGB triplet, string color or hexadecimal color code.                                                 |
| **ColorOrder**             | Color order: three-column matrix of RGB triplets.                                                                                   |
| **ColorOrderIndex**        | Color order index: positive integer value, specifies the next color used.                                                           |
| **DataAspectRatio**        | Relative length of data units: vector [x, y, z].                                                                                    |
| **DataAspectRatioMode**    | Data aspect ratio mode: 'manual' or 'auto' (default).                                                                               |
| **FontAngle**              | Character slant: 'italic' or 'normal' (default).                                                                                    |
| **FontName**               | Font name                                                                                                                           |
| **FontSize**               | Font size: scalar numeric value                                                                                                     |
| **FontUnits**              | Font size units: 'inches', 'centimeters', 'normalized', 'pixels' or 'points' (default).                                             |
| **FontWeight**             | Character thickness: 'bold' or 'normal' (default).                                                                                  |
| **GridAlpha**              | Grid-line transparency (0.15 (default) or value in the range [0, 1]).                                                               |
| **GridColor**              | Color of grid lines ([0.15, 0.15, 0.15] (default) or RGB triplet).                                                                  |
| **GridLineStyle**          | Line style for grid lines: '--' , ':', '-.', 'none' or '-' (default).                                                               |
| **HandleVisibility**       | Visibility of object handle: 'on' (default) or 'off'.                                                                               |
| **HitTest**                | Response to captured mouse clicks: 'on' (default) or 'off'.                                                                         |
| **BeingDeleted**           | Flag indicating that the object is being deleted.                                                                                   |
| **Interruptible**          | Callback interruption                                                                                                               |
| **Layer**                  | Placement of grid lines and tick marks: 'top' or 'bottom' (default).                                                                |
| **LineStyleOrder**         | Line style order: character vector, cell array of character vectors, string array or '-' solid line (default).                      |
| **LineStyleOrderIndex**    | Color order index: positive integer value, property specifies the next line style used.                                             |
| **LineWidth**              | Line width: positive numeric value.                                                                                                 |
| **MinorGridLineStyle**     | Line style for minor grid lines: '-', '--', '-.', 'none' or ':' (default).                                                          |
| **NextPlot**               | Properties to reset: 'add', 'replacechildren', 'replaceall' or 'replace' (default).                                                 |
| **OuterPosition**          | Size and location, including labels and margin: four-element vector.                                                                |
| **Parent**                 | Parent container: Figure graphics object.                                                                                           |
| **PlotBoxAspectRatio**     | Relative length of each axis: vector [x, y, z].                                                                                     |
| **PlotBoxAspectRatioMode** | Selection mode for PlotBoxAspectRatio: 'manual' or 'auto' (default).                                                                |
| **Position**               | Size and location, excluding margin for labels: four-element vector                                                                 |
| **PositionMode**           | 'manual' or 'auto' (default).                                                                                                       |
| **Projection**             | Type of projection onto 2-D screen: 'perspective' or 'orthographic' (default).                                                      |
| **Selected**               | Selection state: 'on' or 'off' (default).                                                                                           |
| **SelectionHighlight**     | Display of selection graphics objects: 'on' (default) or 'off'.                                                                     |
| **Tag**                    | Object identifier: character vector, string scalar or '' (default).                                                                 |
| **TickDir**                | Tick mark direction: 'out', 'both', 'none' or 'in' (default).                                                                       |
| **TickDirMode**            | Selection mode for TickDir: 'manual' or 'auto' (default).                                                                           |
| **TickLength**             | Tick mark length: two-element vector.                                                                                               |
| **TightInset**             | Margins for text labels: four-element vector [left bottom right top].                                                               |
| **Title**                  | Text object for title: text object                                                                                                  |
| **Type**                   | Type of graphics object: 'axes'.                                                                                                    |
| **Units**                  | Position units: 'inches', 'centimeters', 'points', 'pixels', 'characters' or 'normalized' (default).                                |
| **UserData**               | User data: array or []                                                                                                              |
| **View**                   | Azimuth and elevation of view (default: [0 90])                                                                                     |
| **Visible**                | State of visibility: 'on' (default) or 'off'.                                                                                       |
| **XAxisLocation**          | x-axis location: 'top', 'origin' or 'bottom' (default).                                                                             |
| **XColor**                 | Color of axis line, tick values, and labels: RGB triplet.                                                                           |
| **XDir**                   | x-axis direction: 'reverse' or 'normal' (default).                                                                                  |
| **XGrid**                  | Grid lines: 'on' or 'off' (default).                                                                                                |
| **XLabel**                 | Text object for axis label: text object                                                                                             |
| **XLim**                   | Minimum and maximum axis limits: two element vector [min max].                                                                      |
| **XLimMode**               | Selection mode for axis limits: 'manual' or 'auto' (default).                                                                       |
| **XMinorGrid**             | Minor grid lines: 'on' or 'off' (default).                                                                                          |
| **XScale**                 | Scale of values along axis: 'log' or 'linear' (default).                                                                            |
| **XTick**                  | Tick values: vector of increasing values or [] (default).                                                                           |
| **XTickLabel**             | Tick labels: cell array of character vectors or '' (default).                                                                       |
| **XTickLabelMode**         | Selection mode for tick labels: 'manual' or 'auto' (default).                                                                       |
| **XTickMode**              | Selection mode for tick values: 'manual' or 'auto' (default).                                                                       |
| **YAxisLocation**          | y-axis location: 'top', 'origin' or 'bottom' (default).                                                                             |
| **YColor**                 | Color of axis line, tick values, and labels: RGB triplet.                                                                           |
| **YDir**                   | y-axis direction: 'reverse' or 'normal' (default).                                                                                  |
| **YGrid**                  | Grid lines: 'on' or 'off' (default).                                                                                                |
| **YLabel**                 | Text object for axis label: text object                                                                                             |
| **YLim**                   | Minimum and maximum axis limits: two element vector [min max].                                                                      |
| **YLimMode**               | Selection mode for axis limits: 'manual' or 'auto' (default).                                                                       |
| **YMinorGrid**             | Minor grid lines: 'on' or 'off' (default).                                                                                          |
| **YScale**                 | Scale of values along axis: 'log' or 'linear' (default).                                                                            |
| **YTick**                  | Tick values: vector of increasing values or [] (default).                                                                           |
| **YTickLabel**             | Tick labels: cell array of character vectors or '' (default).                                                                       |
| **YTickLabelMode**         | Selection mode for tick labels: 'manual' or 'auto' (default).                                                                       |
| **YTickMode**              | Selection mode for tick values: 'manual' or 'auto' (default).                                                                       |
| **ZColor**                 | Color of axis line, tick values, and labels: RGB triplet.                                                                           |
| **ZDir**                   | z-axis direction: 'reverse' or 'normal' (default).                                                                                  |
| **ZGrid**                  | Grid lines: 'on' or 'off' (default).                                                                                                |
| **ZLabel**                 | Text object for axis label: text object                                                                                             |
| **ZLim**                   | Minimum and maximum axis limits: two element vector [min max].                                                                      |
| **ZLimMode**               | Selection mode for axis limits: 'manual' or 'auto' (default).                                                                       |
| **ZMinorGrid**             | Minor grid lines: 'on' or 'off' (default).                                                                                          |
| **ZScale**                 | Scale of values along axis: 'log' or 'linear' (default).                                                                            |
| **ZTick**                  | Tick values: vector of increasing values or [] (default).                                                                           |
| **ZTickLabel**             | Tick labels: cell array of character vectors or '' (default).                                                                       |
| **ZTickLabelMode**         | Selection mode for tick labels: 'manual' or 'auto' (default).                                                                       |
| **ZTickMode**              | Selection mode for tick values: 'manual' or 'auto' (default).                                                                       |
| **CreateFcn**              | Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect. |
| **DeleteFcn**              | Callback (function handle, string or cell) called when object is deleted.                                                           |

Some properties are available only for compatibility and have currently no effect on the axes.

## 💡 Example

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

<img src="axes.svg" align="middle"/>

## 🔗 See also

[gcf](../graphics/gcf.md), [close](../graphics/close.md).

## 🕔 History

| Version | 📄 Description                                                        |
| ------- | --------------------------------------------------------------------- |
| 1.0.0   | initial version                                                       |
| 1.2.0   | Clicking on an axis automatically sets it as the current axes object. |
| --      | GridAlpha, GridColor propertiew for Axes.                             |
| 1.7.0   | CreateFcn, DeleteFcn callback added.                                  |
| --      | BeingDeleted property added.                                          |

<!--
## 👤 Author

Allan CORNET
-->
