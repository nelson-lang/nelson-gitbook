# figure

Creates an figure window.

## 📝 Syntax

- f = figure()
- f = figure(ID)
- f = figure(H)
- f = figure(propertyName, propertyValue)
- f = figure(ID, propertyName, propertyValue)
- f = figure(H, propertyName, propertyValue)

## 📥 Input argument

- ID - a scalar integer value: find or creates with ID.
- H - a scalar graphics object on an existing figure.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- f - a graphics object: figure handle.

## 📄 Description

<b>figure</b> creates figure.

Clicking on an figure automatically sets it as the current figure object.

<b>Properties</b>:
| Property | Description |
| --- | --- |
| **AlphaMap** | Transparency map for Axes content. |
| **Children** | Children of figure: empty array (default) or 1-D array of objects. |
| **Color** | Background color [R, G, B] or string (example: 'blue') or hexadecimal color code ('#FFAA00'). |
| **Colormap** | Color map for axes content of figure: m-by-3 array of RGB triplets, parula (default). |
| **CurrentAxes** | Target axes in current figure: Axes object. |
| **DevicePixelRatio** | ratio between physical pixels and device-independent pixels for the figure. Common values are 1.0 on normal displays and 2.0 on Apple "retina" displays. |
| **Name** | Name (default ''). |
| **GraphicsSmoothing** | GraphicsSmoothing (default 'on'). |
| **MenuBar** | Figure menu bar display: 'none' or 'figure' (default). |
| **NextPlot** | Directive on how to add next plot: 'new', 'replace', 'replacechildren' or 'add' (default). |
| **Number** | Figure Number. |
| **NumberTitle** | Use number title: 'off' or 'on' (default). |
| **Parent** | Figure parent: root graphics object. |
| **Position** | Location and size of drawable area: [left, bottom, width, height]. 'width' and 'height' define the size of the window. 'left' and 'bottom' define the position of the first addressable pixel in the lower left corner of the window |
| **Resize** | Resize figure: 'on' or 'off' (default). |
| **Tag** | Object identifier: string scalar, character vector, '' (default). |
| **ToolBar** | Figure toolbar display: 'none', 'auto' (default), 'figure'. |
| **Type** | Type 'figure'. |
| **UserData** | User data: array or [] (default). |
| **Visible** | State of visibility: 'off' or 'on' (default). |
| **DrawLater** | is used to delay a huge succession of graphics commands (implying several drawings or redrawings): 'on' or 'off' (default). |
| **CloseRequestFcn** | Close request callback: function handle, cell array, character vector with 'closereq' (default). |
| **CreateFcn** | Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect. |
| **DeleteFcn** | Callback (function handle, string or cell) called when object is deleted. |
| **KeyPressFcn** | Callback (function handle, string or cell) called when a key is pressed while the figure has the focus. |
| **KeyReleaseFcn** | Callback (function handle, string or cell) called when a key is released while the figure has the focus. |
| **ButtonDownFcn** | Callback (function handle, string or cell) called when a mouse button is pressed while the figure has the focus. |
| **BeingDeleted** | Flag indicating that the object is being deleted. |
| **WindowState** | Flag indicating that the Window state: 'normal', 'minimized', 'maximized', 'fullscreen'. |

## 💡 Example

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')

```

## 🔗 See also

[gcf](../graphics/gcf.md), [close](../graphics/close.md).

## 🕔 History

| Version                                      | 📄 Description                                      |
| -------------------------------------------- | --------------------------------------------------- |
| 1.0.0                                        | initial version                                     |
| 1.2.0                                        | Clicking on an figure automatically sets it as the  |
| current figure object.                       |
| 1.7.0                                        | CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, |
| KeyReleaseFcn, ButtonDownFcn callback added. |
| --                                           | BeingDeleted property added.                        |
| 1.8.0                                        | Resize property added.                              |
| 1.13.0                                       | DevicePixelRatio property added.                    |
| 1.14.0                                       | WindowState property added.                         |

<!--
## 👤 Author

Allan CORNET
-->
