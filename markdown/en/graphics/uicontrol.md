# uicontrol

Create user interface component.

## Syntax

- c = uicontrol()
- c = uicontrol(propertyName, propertyValue)
- c = uicontrol(parent)
- c = uicontrol(parent, propertyName, propertyValue, ...)
- uicontrol(c)

## Input argument

- parent - figure graphics object.
- propertyName - property name: a scalar string or row vector character.
- propertyValue - property value: a value compatible with property name.
- c - an User Interface control object.

## Output argument

- c - an User Interface control object.

## Description

<p>
            c = uicontrol creates a push button, which is the default user interface control,
            within the current figure and returns the associated uicontrol object. If no figure is
            currently open, Nelson generates one using the figure function.</p>

<p>
            c = uicontrol(propertyName, propertyValue) creates a user interface control with
            properties defined by one or more name-value pair arguments. For instance, specifying
            'Style', 'button' will create a button.</p>

<p>
            c = uicontrol(parent) creates the default user interface control (push button)
            within the specified parent container, rather than defaulting to the current figure.</p>

<p>
            c = uicontrol(parent, propertyName, propertyValue) creates a user interface
            control within the specified parent container, allowing you to define its properties
            using one or more name-value pair arguments.</p>

<p>
            uicontrol(c) sets the focus to a previously defined user interface control,
            bringing it to the forefront for user interaction.</p>

<p></p>

<p>List of properties:</p>

<p></p>

<p>
            BackgroundColor: Background color, specified as an RGB triplet, a hexadecimal
            color code, or a valid color name.</p>

<p>
            BeingDeleted: Deletion status. on/off logical value.</p>

<p>
            BusyAction: Callback queuing specified as 'queue' (default) or 'cancel'. The
            property determines how Nelson handles the execution of interrupting callbacks.</p>

<p>
            ButtonDownFcn: Button-press callback function</p>

<p>
            CData:An optional icon can be specified as a 3-D array of truecolor RGB values.
            The array values can be either: Double-precision numbers ranging from 0.0 to 1.0, or
            uint8 numbers ranging from 0 to 255</p>

<p>
            Callback: Primary callback function: '' (default), function handle, cell array or
            character vector.</p>

<p>
            Children: UIControl children: empty array.</p>

<p>
            CreateFcn: Component creation function.</p>

<p>
            DeleteFcn: Component deletion function.</p>

<p>
            Enable: Operational state of user interface control.</p>

<p>
            FontAngle: Font angle: 'italic' or 'normal' (default).</p>

<p>
            FontName: Font name: system supported font name.</p>

<p>
            FontSize: Font size: positive number.</p>

<p>
            FontUnits: Font units: 'normalized', 'inches', 'centimeters', 'pixels' or
            'points' (default).</p>

<p>
            FontWeight: Font weight: 'bold' or 'normal' (default).</p>

<p>
            ForeGround: Text color, specified as an RGB triplet, a hexadecimal color code, or
            valid color name.</p>

<p>
            HandleVisibility: Visibility of uiControl handle.</p>

<p>
            HorizontalAlignment: Alignment of uicontrol text 'left', 'right' or 'center'
            (default).</p>

<p>
            Interruptible: Callback interruption 'on' (default).</p>

<p>
            KeyPressFcn: Key press callback function.</p>

<p>
            KeyReleaseFcn: Key release callback function</p>

<p>
            ListboxTop: Index of top item in list box: integer value or 1 (default).</p>

<p>
            Max: Maximum value: number or 1 (default).</p>

<p>
            Min: Minimum value: number or 0 (default).</p>

<p>
            Parent: Parent object: Figure.</p>

<p>
            Position: Location and size: [left bottom width height].</p>

<p>
            SliderStep: Slider step size: [minorstep majorstep] or [0.01 0.10] (default).</p>

<p>
            String: Text to display: character vector, cell array of character vectors or
            string array.</p>

<p>
            Style: 'pushbutton' (default), 'togglebutton', 'checkbox', 'radiobutton', 'edit',
            'text', 'slider'.</p>

<p>
            Tooltip: Tooltip: character vector or string scalar.</p>

<p>
            Type: 'uicontrol'</p>

<p>
            Units: Units of measurement: 'pixels' (default), 'normalized', 'centimeters',
            'inches' or 'points'.</p>

<p>
            UserData: User data array or [] (default).</p>

<p>
            Value: Current value: number</p>

<p>
            Visible: State of visibility: 'on' (default).</p>

## Examples

Pushbutton

```matlab

f = figure;
b = uicontrol(f,'Style','pushbutton', 'String', 'Click Me', 'Position', [100 100 60 30], 'Callback', 'disp(''Hello World!'')')

```

<img src="uicontrol_1.png" align="middle"/>
Checkbox

```matlab

f = figure();
h = uicontrol('Style', 'checkbox', 'String', 'Click Me!', 'Position', [100, 100, 100, 50]);

```

<img src="uicontrol_2.png" align="middle"/>
Edit

```matlab

f = figure();
h = uicontrol('Style', 'edit', 'String', 'Click Me!', 'Position', [100, 100, 100, 50]);

```

<img src="uicontrol_3.png" align="middle"/>
Image

```matlab

hFig = figure('Position', [100, 100, 300, 300]);
imgSize = 50;  % Size of the image
[X, Y] = meshgrid(1:imgSize, 1:imgSize);
CData = cat(3, X/imgSize, Y/imgSize, zeros(imgSize));
CData = im2double(CData);  % Ensure the image is of type double
hButton = uicontrol('Style', 'pushbutton',  'Position', [100, 100, 100, 100], 'CData', CData, 'String', 'Click Me!');

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

## See also

[figure](../graphics/figure.md), [Managing Callback Interruptions in Nelson](../graphics/graphical_callback.md).

## History

| Version | Description          |
| ------- | -------------------- |
| 1.7.0   | initial version      |
| 1.14.0  | Units property added |

## Author

Allan CORNET
