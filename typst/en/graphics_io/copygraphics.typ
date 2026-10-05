#import "nelson_help.typ": *

= copygraphics <graphics_io:copygraphics>

Copy plot to clipboard.

== Syntax

- #raw("copygraphics(fig)");

== Input argument

/ fig: figure object.

== Description

#strong[copygraphics]; copy figure to clipboard.

 On the desktop, the rendered RGBA image is sent to the native clipboard by the optional desktop adapter. In web mode, the same rendering is encoded as an RGBA PNG and sent through #strong[clipboard.image]; to the browser. Browser clipboard access requires a secure context and may require permission or a user gesture. When the automatic request is rejected, a visible #strong[Copy image]; action is displayed so the operation can be retried.


== Example

``````matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
copygraphics(gcf());

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics_io:saveas>)[saveas];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [browser image clipboard support added],
)

// Author: Allan CORNET
