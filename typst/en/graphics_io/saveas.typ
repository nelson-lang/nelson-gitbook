#import "nelson_help.typ": *

= saveas <graphics_io:saveas>

Save figure to specific file format.

== Syntax

- #raw("saveas(fig, filename)");
- #raw("saveas(fig, filename, formattype)");

== Input argument

/ fig: figure object.
/ filename: character vector or scalar string: destination filename.
/ formattype: character vector or scalar string: extension filename.

== Description

#strong[saveas]; save figure to specific file format.

 The explicit #strong[formattype]; takes precedence over the filename extension. Without an extension, PNG is selected and #strong[.png]; is appended. Desktop, web and headless modes use the same renderer and format registry.

 #strong[Background:]; while the figure #strong[InvertHardcopy]; property is #strong['on']; (the default), the exported background is white whatever the on-screen figure #strong[Color]; (light gray by default). Set #strong[InvertHardcopy]; to #strong['off']; to export the on-screen figure color.

 #strong[Vector formats]; use dedicated figure exporters:

 

#table(
  columns: 3,
  [Option], [Format], [Extension], 
  [svg], [Scalable Vector Graphics], [.svg], 
  [pdf], [Portable Document Format, full-page color], [.pdf], 
)
 #strong[Raster formats]; are encoded through the same registry as #strong[imwrite];:

 

#table(
  columns: 3,
  [Canonical option], [Aliases], [Extension], 
  [png], [-], [.png], 
  [jpg], [jpeg, jfif], [.jpg, .jpeg, .jfif], 
  [gif], [-], [.gif], 
  [webp], [-], [.webp], 
  [tiff], [tif], [.tiff, .tif], 
  [bmp], [dib], [.bmp, .dib], 
  [tga], [-], [.tga], 
  [pbm, pgm, ppm, pnm], [-], [.pbm, .pgm, .ppm, .pnm], 
  [pcx], [-], [.pcx], 
)

== Example

``````matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
saveas(gcf(), [tempdir, 'svg-file.svg']);
saveas(gcf(), [tempdir, 'webp-file.webp']);
saveas(gcf(), [tempdir, 'bitmap-file.bmp']);
saveas(gcf(), [tempdir, 'document-file.pdf']);
close(gcf());

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.13.0], [tiff format added],
  [2.0.0], [shared desktop, web and headless export formats added],
)

// Author: Allan CORNET
