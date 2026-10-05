#import "../../nelson_help.typ": *

= theme <graphics:3_labels_styling.2_color_styling.theme>

Set the color theme of a figure.

== Syntax

- #raw("theme(themename)");
- #raw("theme(f, themename)");
- #raw("theme(f, t)");
- #raw("t = theme(...)");

== Input argument

/ themename: a string: 'light' or 'dark'.
/ f: a graphics object. Target figure. If a non-figure object is given, its ancestor figure is used. If omitted, the current figure is used.
/ t: a theme object, as returned by the #strong[Theme]; property of a figure.

== Output argument

/ t: the theme object applied to the figure.

== Description

#strong[theme]; sets the color theme of a figure to #strong['light']; or #strong['dark'];.

 Applying a theme updates the #strong[Theme]; property of the figure and the colors of the figure and its children that use theme-managed colors.

 With no figure argument, the theme is applied to the current figure returned by #strong[gcf];.


== Examples

Apply a dark theme to a figure.

``````matlab
f = figure();
surf(peaks);
theme(f, 'dark');

``````

Query the theme applied to the current figure.

``````matlab
f = figure();
t = theme('light')

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:3_labels_styling.2_color_styling.colororder>)[colororder];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
