# figure

Creates an figure window.

## Syntax

- f = figure()
- f = figure(ID)
- f = figure(H)
- f = figure(propertyName, propertyValue)
- f = figure(ID, propertyName, propertyValue)
- f = figure(H, propertyName, propertyValue)

## Input argument

- ID - a scalar integer value: find or creates with ID.
- H - a scalar graphics object on an existing figure.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- f - a graphics object: figure handle.

## Description

  <p><b>figure</b> creates figure.</p>
  <p>Clicking on an figure automatically sets it as the current figure object.</p>
  <p/>
  <p><b>Properties</b>:</p>
  <p/>
  <p><b>AlphaMap</b>: Transparency map for Axes content.</p>
  <p><b>Children</b>: Children of figure: empty array (default) or 1-D array of objects.</p>
  <p><b>Color</b>: Background color [R, G, B] or string (example: 'blue') or hexadecimal color code ('#FFAA00').</p>
  <p><b>Colormap</b>: Color map for axes content of figure: m-by-3 array of RGB triplets, parula (default).</p>
  <p><b>CurrentAxes</b>: Target axes in current figure: Axes object.</p>
  <p><b>DevicePixelRatio</b>: ratio between physical pixels and device-independent pixels for the figure. Common values are 1.0 on normal displays and 2.0 on Apple "retina" displays.</p>
  <p><b>Name</b>: Name (default '').</p>
  <p><b>GraphicsSmoothing</b>: GraphicsSmoothing (default 'on').</p>
  <p><b>MenuBar</b>:  Figure menu bar display: 'none' or 'figure' (default).</p>
  <p><b>NextPlot</b>: Directive on how to add next plot: 'new', 'replace', 'replacechildren' or 'add' (default).</p>
  <p><b>Number</b>: Figure Number.</p>
  <p><b>NumberTitle</b>: Use number title: 'off' or 'on' (default).</p>
  <p><b>Parent</b>: Figure parent: root graphics object.</p>
  <p><b>Position</b>: Location and size of drawable area: [left, bottom, width, height]</p>
  <p>'width' and 'height' define the size of the window. 'left' and 'bottom' define the position of the first addressable pixel in the lower left corner of the window</p>
  <p><b>Resize</b>: Resize figure: 'on' or 'off' (default).</p>
  <p><b>Tag</b>: Object identifier: string scalar, character vector, '' (default).</p>
  <p><b>ToolBar</b>:  Figure toolbar display: 'none', 'auto' (default), 'figure'.</p>
  <p><b>Type</b>: Type 'figure'.</p>
  <p><b>UserData</b>: User data: array or [] (default).</p>
  <p><b>Visible</b>: State of visibility: 'off' or 'on' (default).</p>
  <p><b>DrawLater</b>: is used to delay a huge succession of graphics commands (implying several drawings or redrawings): 'on' or 'off' (default).</p>
  <p><b>CloseRequestFcn</b>:  Close request callback: function handle, cell array, character vector with 'closereq' (default).</p>
  <p><b>CreateFcn</b> Callback (function handle, string or cell) called when object is created.
Set this property on an existing component has no effect.</p>
  <p><b>DeleteFcn</b> Callback (function handle, string or cell) called when object is deleted.</p>
  <p><b>KeyPressFcn</b> Callback (function handle, string or cell) called when a key is pressed while the figure has the focus.</p>
  <p><b>KeyReleaseFcn</b> Callback (function handle, string or cell) called when a key is released while the figure has the focus.</p>
  <p><b>ButtonDownFcn</b> Callback (function handle, string or cell) called when a mouse button is pressed while the figure has the focus.</p>
  <p><b>BeingDeleted</b> Flag indicating that the object is being deleted.</p>

## Example

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')
```

## See also

[gcf](gcf.md), [close](close.md).

## History

| Version | Description                                                                                      |
| ------- | ------------------------------------------------------------------------------------------------ |
| 1.0.0   | initial version                                                                                  |
| 1.2.0   | Clicking on an figure automatically sets it as the current figure object.                        |
| 1.7.0   | CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, KeyReleaseFcn, ButtonDownFcn callback added. |
| --      | BeingDeleted property added.                                                                     |
| 1.8.0   | Resize property added.                                                                           |
| 1.13.0  | DevicePixelRatio property added.                                                                 |

## Author

Allan CORNET
