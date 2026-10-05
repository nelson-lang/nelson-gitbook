#import "../nelson_help.typ": *

= imshow <graphics:4_images.imshow>

Display image.

== Syntax

- #raw("imshow(filename)");
- #raw("imshow(img)");
- #raw("imshow(RGB)");
- #raw("imshow(img, [low high])");
- #raw("imshow(img, [])");
- #raw("imshow(img, map)");
- #raw("imshow(..., propertyName, propertyValue)");
- #raw("go = imshow(...)");

== Input argument

/ filename: row vector character: file name of the image to display.
/ img: grayscale image: matrix.
/ RGB: truecolor image: m-by-n-by-3 array.
/ \[low high\]: grayscale image display range.
/ map: colormap: c-by-3 matrix.
/ propertyName: a scalar string or row vector character (for compatibility).
/ propertyValue: a value (for compatibility).

== Output argument

/ go: a graphics object: image type.

== Description

#strong[imshow(img)]; displays the image #strong[im];.


== Example

``````matlab
f = figure();
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/wp-content/uploads/2025/05/3dmodels-casa-2025-astro.jpg');
h = imshow(filename);

``````


== See also

#nlink(<graphics_io:imread>)[imread];, #nlink(<graphics:4_images.image>)[image];, #nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
