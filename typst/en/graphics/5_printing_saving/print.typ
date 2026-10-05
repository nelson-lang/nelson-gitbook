#import "../nelson_help.typ": *

= print <graphics:5_printing_saving.print>

Export a figure to an image or document file.

== Syntax

- #raw("print(filename)");
- #raw("print(filename, formatoption)");
- #raw("print(fig, filename)");
- #raw("print(fig, filename, formatoption)");
- #raw("print(fig, filename, formatoption, resolution)");

== Input argument

/ fig: Figure graphics object. When omitted, the current figure returned by #strong[gcf()]; is used.
/ filename: Character vector or string scalar: destination filename.
/ formatoption: Character vector or string scalar: a #strong[-d]; device option (for example #strong['-dpng'];, #strong['-dpdf'];, #strong['-dsvg'];). When omitted, the format is inferred from the filename extension.
/ resolution: Character vector or string scalar: a #strong[-r]; resolution option (for example #strong['-r150'];). Accepted for compatibility; the export follows the figure size.

== Description

#strong[print]; exports a figure to an image or document file. It is a thin wrapper over #strong[saveas];: the #strong[-d]; device option selects the output format and the figure is exported through the shared desktop, web and headless renderer.

 When no #strong[-d]; device is given, the format is inferred from the filename extension, and PNG is used when the filename has no extension. A #strong[-r]; resolution option is accepted for compatibility but does not resample the output.

 The device option maps to the same format registry as #strong[saveas];:

 

#table(
  columns: 3,
  [Device option], [Format], [Extension], 
  [-dpng], [Portable Network Graphics], [.png], 
  [-djpeg, -djpg], [JPEG], [.jpg], 
  [-dtiff, -dtiffn, -dtif], [TIFF], [.tif], 
  [-dbmp], [Bitmap], [.bmp], 
  [-dgif], [Graphics Interchange Format], [.gif], 
  [-dwebp], [WebP], [.webp], 
  [-dsvg], [Scalable Vector Graphics], [.svg], 
  [-dpdf], [Portable Document Format], [.pdf], 
)
 #strong[Background:]; as with #strong[saveas];, while the figure #strong[InvertHardcopy]; property is #strong['on']; (the default), the exported background is white whatever the on-screen figure #strong[Color];.


== Examples

Export the current figure to PNG, PDF and SVG.

``````matlab

f = figure('Visible', 'off');
plot(1:10, (1:10) .^ 2);
title('Quadratic data');
print(f, [tempname(), '.png'], '-dpng');
print(f, [tempname(), '.pdf'], '-dpdf');
print(f, [tempname(), '.svg'], '-dsvg', '-r150');
close(f);

``````

Infer the format from the filename extension.

``````matlab

f = figure('Visible', 'off');
plot(1:5);
pngfile = [tempname(), '.png'];
print(pngfile);
assert(isfile(pngfile));
close(f);

``````


== See also

#nlink(<graphics_io:saveas>)[saveas];, #nlink(<graphics:5_printing_saving.savefig>)[savefig];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
