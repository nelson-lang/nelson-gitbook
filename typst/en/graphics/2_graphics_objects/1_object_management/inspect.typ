#import "../../nelson_help.typ": *

= inspect <graphics:2_graphics_objects.1_object_management.inspect>

Open the property inspector for graphics objects.

== Syntax

- #raw("inspect");
- #raw("inspect(obj)");
- #raw("inspect([obj1 obj2])");
- #raw("inspect('-close')");

== Input argument

/ obj: A graphics object, or a vector of graphics objects. The first object is selected in the inspector; the others remain available in the object browser.

== Description

#strong[inspect]; opens the property inspector, a panel hosted inside the figure window that lists the properties of the selected object and lets you edit them. The same inspector is available on the Qt desktop, the webview and the WebAssembly builds.

 #strong[inspect]; with no argument opens the inspector for the current figure.

 #strong[inspect(obj)]; opens the inspector and selects #strong[obj];. An object browser shows the figure, its axes and their children (lines, surfaces, patches, titles, labels, ...); selecting an entry displays its full list of properties.

 Editable properties are shown with the appropriate editor: a drop-down list for enumerated values, a color picker for colors, a check box for on\/off values and a text field for numbers, vectors and strings. Read-only properties are shown but cannot be changed. Large or structured values (for example data arrays) are summarised, such as #strong[1x100 double];.

 Changes apply immediately to the object. The inspector also tracks changes made from a script or through mouse and keyboard interaction, so the displayed values stay in sync.

 #strong[inspect('-close')]; closes the property inspector.

 The property inspector can also be opened from the figure toolbar with the #strong[Properties]; button.


== Examples

Inspect the current axes of a plot.

``````matlab

f = figure();
plot(1:10, (1:10) .^ 2);
inspect(gca());
inspect('-close');
close(f);

``````

Inspect a specific plotted object.

``````matlab

f = figure();
p = plot(1:10, sin(1:10), 'LineWidth', 2);
inspect(p);
inspect('-close');
close(f);

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj];, #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
