# uicontrol

Create user interface component.

## 📝 Syntax

- c = uicontrol()
- c = uicontrol(propertyName, propertyValue)
- c = uicontrol(parent)
- c = uicontrol(parent, propertyName, propertyValue, ...)
- uicontrol(c)

## 📥 Input argument

- parent - figure graphics object.
- propertyName - property name: a scalar string or row vector character.
- propertyValue - property value: a value compatible with property name.
- c - an User Interface control object.

## 📤 Output argument

- c - an User Interface control object.

## 📄 Description

<b>c = uicontrol</b> creates a push button, which is the default user interface control, within the current figure and returns the associated uicontrol object. If no figure is currently open, Nelson generates one using the figure function.

<b>c = uicontrol(propertyName, propertyValue)</b> creates a user interface control with properties defined by one or more name-value pair arguments. For instance, specifying 'Style', 'button' will create a button.

<b>c = uicontrol(parent)</b> creates the default user interface control (push button) within the specified parent container, rather than defaulting to the current figure.

<b>c = uicontrol(parent, propertyName, propertyValue)</b> creates a user interface control within the specified parent container, allowing you to define its properties using one or more name-value pair arguments.

<b>uicontrol(c)</b> sets the focus to a previously defined user interface control, bringing it to the forefront for user interaction.

List of properties:

<b>BackgroundColor</b>: Background color, specified as an RGB triplet, a hexadecimal color code, or a valid color name.

<b>BeingDeleted</b>: Deletion status. on/off logical value.

<b>BusyAction</b>: Callback queuing specified as 'queue' (default) or 'cancel'. The property determines how Nelson handles the execution of interrupting callbacks.

<b>ButtonDownFcn</b>: Button-press callback function

<b>CData</b>:An optional icon can be specified as a 3-D array of truecolor RGB values. The array values can be either: Double-precision numbers ranging from 0.0 to 1.0, or uint8 numbers ranging from 0 to 255

<b>Callback</b>: Primary callback function: '' (default), function handle, cell array or character vector.

<b>Children</b>: UIControl children: empty array.

<b>CreateFcn</b>: Component creation function.

<b>DeleteFcn</b>: Component deletion function.

<b>Enable</b>: Operational state of user interface control.

<b>FontAngle</b>: Font angle: 'italic' or 'normal' (default).

<b>FontName</b>: Font name: system supported font name.

<b>FontSize</b>: Font size: positive number.

<b>FontUnits</b>: Font units: 'normalized', 'inches', 'centimeters', 'pixels' or 'points' (default).

<b>FontWeight</b>: Font weight: 'bold' or 'normal' (default).

<b>ForeGround</b>: Text color, specified as an RGB triplet, a hexadecimal color code, or valid color name.

<b>HandleVisibility</b>: Visibility of uiControl handle.

<b>HorizontalAlignment</b>: Alignment of uicontrol text 'left', 'right' or 'center' (default).

<b>Interruptible</b>: Callback interruption 'on' (default).

<b>KeyPressFcn</b>: Key press callback function.

<b>KeyReleaseFcn</b>: Key release callback function

<b>ListboxTop</b>: Index of top item in list box: integer value or 1 (default).

<b>Max</b>: Maximum value: number or 1 (default).

<b>Min</b>: Minimum value: number or 0 (default).

<b>Parent</b>: Parent object: Figure.

<b>Position</b>: Location and size: [left bottom width height].

<b>SliderStep</b>: Slider step size: [minorstep majorstep] or [0.01 0.10] (default).

<b>String</b>: Text to display: character vector, cell array of character vectors or string array.

<b>Style</b>: 'pushbutton' (default), 'togglebutton', 'checkbox', 'radiobutton', 'edit', 'text', 'slider'.

<b>Tooltip</b>: Tooltip: character vector or string scalar.

<b>Type</b>: 'uicontrol'

<b>Units</b>: Units of measurement: 'pixels' (default), 'normalized', 'centimeters', 'inches' or 'points'.

<b>UserData</b>: User data array or [] (default).

<b>Value</b>: Current value: number

<b>Visible</b>: State of visibility: 'on' (default).

## 💡 Examples

Pushbutton

```matlab

f = figure;
b = uicontrol(f,Style='pushbutton', String='Click Me', Position=[100 100 60 30], Callback='disp(''Hello World!'')')

```

<img src="uicontrol_1.png" align="middle"/>
Checkbox

```matlab

f = figure();
h = uicontrol(Style='checkbox', String='Click Me!', Position=[100, 100, 100, 50]);

```

<img src="uicontrol_2.png" align="middle"/>
Edit

```matlab

f = figure();
h = uicontrol(Style='edit', String='Click Me!', Position=[100, 100, 100, 50]);

```

<img src="uicontrol_3.png" align="middle"/>
Image

```matlab

hFig = figure(Position=[100, 100, 300, 300]);
imgSize = 50;  % Size of the image
[X, Y] = meshgrid(1:imgSize, 1:imgSize);
CData = cat(3, X/imgSize, Y/imgSize, zeros(imgSize));
CData = im2double(CData);  % Ensure the image is of type double
hButton = uicontrol(Style='pushbutton',  Position=[100, 100, 100, 100], CData=CData, String='Click Me!');

```

<img src="uicontrol_4.png" align="middle"/>
uicontrol demo

```matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo
uicontrol_demo

```

<img src="uicontrol_5.png" align="middle"/>
uicontrol demo Interruptible

```matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

```

<img src="uicontrol_6.png" align="middle"/>

## 🔗 See also

[figure](../graphics/figure.md), [Managing Callback Interruptions in Nelson](../graphics/graphical_callback.md).

## 🕔 History

| Version | 📄 Description       |
| ------- | -------------------- |
| 1.7.0   | initial version      |
| 1.14.0  | Units property added |

<!--
## 👤 Author

Allan CORNET
-->
