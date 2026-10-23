# inspect

Open the property inspector for graphics objects.

## 📝 Syntax

- inspect
- inspect(obj)
- inspect([obj1 obj2])
- inspect('-close')

## 📥 Input argument

- obj - A graphics object, or a vector of graphics objects. The first object is selected in the inspector; the others remain available in the object browser.

## 📄 Description


<b>inspect</b> opens the property inspector, a panel hosted inside the figure window that lists the properties of the selected object and lets you edit them. The same inspector is available on the Qt desktop, the webview and the WebAssembly builds. 

<b>inspect</b> with no argument opens the inspector for the current figure. 

<b>inspect(obj)</b> opens the inspector and selects <b>obj</b>. An object browser shows the figure, its axes and their children (lines, surfaces, patches, titles, labels, ...); selecting an entry displays its full list of properties. 

Editable properties are shown with the appropriate editor: a drop-down list for enumerated values, a color picker for colors, a check box for on/off values and a text field for numbers, vectors and strings. Read-only properties are shown but cannot be changed. Large or structured values (for example data arrays) are summarised, such as <b>1x100 double</b>. 

Changes apply immediately to the object. The inspector also tracks changes made from a script or through mouse and keyboard interaction, so the displayed values stay in sync. 

<b>inspect('-close')</b> closes the property inspector. 

The property inspector can also be opened from the figure toolbar with the <b>Properties</b> button.

## 💡 Examples

Inspect the current axes of a plot.

```matlab

f = figure();
plot(1:10, (1:10) .^ 2);
inspect(gca());
inspect('-close');
close(f);

```
Inspect a specific plotted object.

```matlab

f = figure();
p = plot(1:10, sin(1:10), 'LineWidth', 2);
inspect(p);
inspect('-close');
close(f);

```


## 🔗 See also

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [findobj](../../../graphics/2_graphics_objects/1_object_management/findobj.md), [gca](../../../graphics/2_graphics_objects/1_object_management/gca.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
