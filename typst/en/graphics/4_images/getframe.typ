#import "../nelson_help.typ": *

= getframe <graphics:4_images.getframe>

Capture figure or axes as movie frame.

== Syntax

- #raw("F = getframe");
- #raw("F = getframe(ax)");
- #raw("F = getframe(fig)");

== Input argument

/ ax: axes object: Axes to capture.
/ fig: figure object: Figure to capture.

== Output argument

/ F: struct: Movie frame.

== Description

#strong[F \= getframe]; captures the current axes as displayed on the screen as a movie frame. F is a structure containing the image data. The capture preserves the on-screen size of the axes but does not include tick labels or any content outside the axes boundaries.

 #strong[F \= getframe(ax)]; captures the specified axes ax instead of the current axes.

 #strong[F \= getframe(fig)]; captures the entire figure window specified by fig, including the axes title, labels, and tick marks. However, the captured frame does not include the figure’s menu or toolbars.


== Examples

``````matlab
f = figure();
surf(peaks);
F = getframe(f);
figure('Color',[0.5 0.5 0.5]);
imshow(F.cdata)

``````

``````matlab
f = figure();
ax1 = subplot(2,1,1);
surf(peaks);
ax2 = subplot(2,1,2);
plot(rand(30))
F1 = getframe(ax1);
F2 = getframe(ax2);
figure('Color',[0.5 0.5 0.5]);
imshow(F1.cdata)
figure('Color',[0.5 0.5 0.5]);
imshow(F2.cdata)

``````


== See also

#nlink(<graphics:4_images.image>)[image];, #nlink(<graphics:4_images.imshow>)[imshow];, #nlink(<graphics_io:imwrite>)[imwrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [initial version],
)

// Author: Allan CORNET
