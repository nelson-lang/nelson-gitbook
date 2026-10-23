#import "../nelson_help.typ": *

= exportapp <graphics:5_printing_saving.exportapp>

Save figure including UI components as an image file.

== Syntax

- #raw("exportapp(fig, filename)");

== Input argument

/ fig: figure object: figure or UI figure to capture.
/ filename: a character vector or string scalar: destination image file.

== Description

#strong[exportapp(fig, filename)]; captures the figure #strong[fig];, including all of its UI components, and writes it to the image file #strong[filename];.

 The output file format is determined by the extension of #strong[filename]; (for example #strong[.png];, #strong[.jpg];, or #strong[.tif];).

 Unlike #strong[saveas];, #strong[exportapp]; is intended to export figures created with #strong[uifigure]; that contain UI components such as buttons, sliders, and tables.


== Example

``````matlab
f = uifigure('Position', [100 100 300 200]);
b = uibutton(f, 'Text', 'Export me');
exportapp(f, [tempdir(), 'exportapp_example.png']);
img = imread([tempdir(), 'exportapp_example.png']);
figure();
imshow(img)

``````


== See also

#nlink(<graphics:4_images.getframe>)[getframe];, #nlink(<graphics_io:saveas>)[saveas];, #nlink(<gui:uifigure>)[uifigure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
